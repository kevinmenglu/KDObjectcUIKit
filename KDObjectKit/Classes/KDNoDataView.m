//
//  KDNoDataView.m
//  kido
//
//  Created by 慕常青 on 2018/9/28.
//  Copyright © 2018年 kidoroo. All rights reserved.
//

#import "KDNoDataView.h"
#import "Masonry.h"
#define KHorGap (50.0f)

@interface KDNoDataView ()

@property (nonnull, nonatomic, strong) UIImageView *noDataImgView;
@property (nonnull, nonatomic, strong) UIImageView *topImageView;
@property (nonnull, nonatomic, strong) UILabel *noDataLabel;

@end

@implementation KDNoDataView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadSubViews];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self loadSubViews];
    }
    return self;
}

- (void)loadSubViews
{
    [self addSubview:self.topImageView];
    [self.topImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self);
        make.centerY.equalTo(self).offset(-20);
    }];
    
    [self addSubview:self.noDataImgView];
    [self.noDataImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.centerY.equalTo(self.topImageView.mas_centerY);
    }];

    
    [self addSubview:self.noDataLabel];
    [self.noDataLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(KHorGap);
        make.right.equalTo(self).offset(-KHorGap);
        make.top.equalTo(self.noDataImgView.mas_bottom).offset(30.0f);
    }];
    
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(touchGestureAction:)];
    [self addGestureRecognizer:gesture];
}

+ (nonnull instancetype)noDataView:(CGRect)showFrame WithTouchBlock:(nonnull KDNoDataViewTouchBlock)block
{
    return [self noDataView:showFrame withContent:@"暂无数据" WithTouchBlock:block];
}

+ (nonnull instancetype)noDataView:(CGRect)showFrame
                       withContent:(nullable NSString *)content
                    WithTouchBlock:(nonnull KDNoDataViewTouchBlock)block
{
    KDNoDataView *noData = [[KDNoDataView alloc] init];
    noData.frame = showFrame;
    noData.block = block;
    noData.content = content;
    return noData;
}

- (void)setContent:(NSString *)content {
    self.noDataLabel.text = content;
}

- (void)touchGestureAction:(UITapGestureRecognizer *)gesture{
    if (self.block) {
        self.block();
    }
}

- (nonnull UIImageView *)noDataImgView{
    if (!_noDataImgView) {
        _noDataImgView = [[UIImageView alloc]init];
        _noDataImgView.image = [UIImage imageNamed:@"chengzhang_icon_long"];
        [_noDataImgView sizeToFit];
    }
    return _noDataImgView;
}

- (UIImageView *)topImageView
{
    if (!_topImageView)
    {
        _topImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"chengzhang_background_shuju"]];
        [_topImageView sizeToFit];
    }
    return _topImageView;
}

- (nonnull UILabel *)noDataLabel{
    if (!_noDataLabel) {
        _noDataLabel = [[UILabel alloc] init];
        _noDataLabel.font = [UIFont systemFontOfSize:13];
        _noDataLabel.textAlignment = NSTextAlignmentCenter;
        //KDColorWithHexValue(0x899297)
        _noDataLabel.numberOfLines = 0;
    }
    return _noDataLabel;
}


@end
