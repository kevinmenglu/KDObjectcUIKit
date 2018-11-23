//
//  KDTabBar.m
//  kido
//
//  Created by peterfeng on 2018/6/19.
//  Copyright © 2018年 kidoroo. All rights reserved.
//

#import "KDTabBar.h"
#import "KDTabBarButton.h"

#define KDBADGE_HEIGHT  18.0
@interface KDTabBar()

@property (nonnull, nonatomic, copy) NSMutableArray<KDTabBarButton *> *itemList;
@property (nonnull, nonatomic, strong) NSMutableArray<UILabel *> *badgeList;
@property (nonnull, nonatomic, strong) KDTabBarButton *selectBtn;

@end

@implementation KDTabBar

+ (nonnull instancetype)tabBarWithDelegate:(id<KDTabBarDelegate>)delegate{
    
    CGFloat bottom ;
    if (@available(iOS 11.0, *))
    {
        UIWindow *window = UIApplication.sharedApplication.keyWindow;
        bottom = window.safeAreaInsets.bottom;
    }
    else
    {
        bottom = UIEdgeInsetsZero.bottom;
    }
    
    KDTabBar *tabBar = [[KDTabBar alloc]initWithFrame:CGRectMake(0, KDScreenHeight - KDTabBarHeight - bottom, KDScreenWidth, KDTabBarHeight)];
    tabBar.delegate = delegate;
    UIView * lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, KDScreenWidth, 0.5)];
    lineView.backgroundColor = KDColor(219, 220, 221);
    [tabBar addSubview:lineView];
    return tabBar;
}


- (void)setBadgeValue:(NSString *)value itemIndex:(NSInteger)index
{
    
    if (index > self.itemList.count || index < 0) {
        return;
    }
    
    UILabel *badgeLbl = self.badgeList[index];
    if (NULLString(value) || [value isEqualToString:@"0"])
    {
        badgeLbl.hidden = YES;
        badgeLbl.text = nil;
        return;
    }
    
    if ([value respondsToSelector:@selector(integerValue)] && value.integerValue > 999)
    {
        value = @"999";
    }
    
    badgeLbl.hidden = NO;
    badgeLbl.text = value;
    [badgeLbl sizeToFit];
    [self setNeedsLayout];
}

- (void)addBarItemWithNormalImageName:(NSString *)normalImageName selectImageName:(NSString *)selectImageName title:(NSString *)title{
    KDTabBarButton *tabBarBtn = [KDTabBarButton buttonWithType:UIButtonTypeCustom];
    [tabBarBtn setImage:KDGetImage(normalImageName) forState:UIControlStateNormal];
    [tabBarBtn setImage:KDGetImage(selectImageName) forState:UIControlStateSelected];
    [tabBarBtn setTitle:title forState:UIControlStateNormal];
    [tabBarBtn setTitleColor:KDColorWithHexValue(0x899297) forState:UIControlStateNormal];
    [tabBarBtn setTitleColor:KDColorWithHexValue(0x57B9FF) forState:UIControlStateSelected];
    tabBarBtn.titleLabel.font = KDRegularFont(11);
    tabBarBtn.tag = self.itemList.count + 1000;
    if (self.itemList.count == 0) {
        tabBarBtn.selected = YES;
        self.selectBtn = tabBarBtn;
    }
    [tabBarBtn addTarget:self action:@selector(tabBarBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.itemList addObject:tabBarBtn];
    [self addSubview:tabBarBtn];
    
    UILabel *badgeLbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, KDBADGE_HEIGHT, KDBADGE_HEIGHT)];
    badgeLbl.backgroundColor = KDColorWithHexValue(0xFF5454);
    badgeLbl.layer.cornerRadius = KDBADGE_HEIGHT * 0.5;
    badgeLbl.layer.masksToBounds = true;
    badgeLbl.font = KDMediumFont(10.0);
    badgeLbl.textAlignment = NSTextAlignmentCenter;
    badgeLbl.textColor = [UIColor whiteColor];
    badgeLbl.hidden = YES;
    [self.badgeList addObject:badgeLbl];
    [self addSubview:badgeLbl];
}

- (void)tabBarBtnClick:(UIButton *)btn{
    self.selectIndex = btn.tag - 1000;
}

- (void)setSelectIndex:(NSInteger)selectIndex{
    if ([self.delegate respondsToSelector:@selector(tabBar:selectFromIndex:toIndex:)]) {
        [self.delegate tabBar:self selectFromIndex:_selectIndex toIndex:selectIndex];
    }
    if (selectIndex != _selectIndex) {
        self.selectBtn.selected = NO;
        self.selectBtn = self.itemList[selectIndex];
        self.selectBtn.selected = YES;
    }
    _selectIndex = selectIndex;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    CGFloat barBtnWith = KDScreenWidth / self.itemList.count;
    [self.itemList enumerateObjectsUsingBlock:^(KDTabBarButton * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        obj.frame = CGRectMake(barBtnWith * idx, 0, barBtnWith, KDTabBarHeight);
    }];
    
    [self.badgeList enumerateObjectsUsingBlock:^(UILabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj sizeToFit];
        CGRect frame = obj.frame;
        frame.size.height = KDBADGE_HEIGHT;
        frame.size.width = obj.cg_width > KDBADGE_HEIGHT ? obj.cg_width : KDBADGE_HEIGHT;
        frame.origin.y = 2.5;
        frame.origin.x = barBtnWith * idx + barBtnWith * 0.5 + 8;
        obj.frame = frame;
    }];
}

- (nonnull NSMutableArray<KDTabBarButton *> *)itemList{
    if (!_itemList) {
        _itemList = [[NSMutableArray alloc] initWithCapacity:4];
    }
    return _itemList;
}

- (NSMutableArray<UILabel *> *)badgeList
{
    if (!_badgeList)
    {
        _badgeList = [[NSMutableArray alloc] initWithCapacity:4];
    }
    return _badgeList;
}

@end
