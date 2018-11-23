//
//  KDTabBar.h
//  kido
//
//  Created by peterfeng on 2018/6/19.
//  Copyright © 2018年 kidoroo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KDTabBar;
@protocol KDTabBarDelegate<NSObject>

- (void)tabBar:(KDTabBar *)tabBar selectFromIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex;

@end

@interface KDTabBar : UIView
@property (nonatomic, assign) NSInteger selectIndex;
@property (nullable, nonatomic, weak) id<KDTabBarDelegate> delegate;
+ (nonnull instancetype)tabBarWithDelegate:(id<KDTabBarDelegate>)delegate;

- (void)addBarItemWithNormalImageName:(nonnull NSString *)normalImageName selectImageName:(nonnull NSString *)selectImageName title:(nonnull NSString *)title;
- (void)setBadgeValue:(nullable NSString *)value itemIndex:(NSInteger)index;

@end
