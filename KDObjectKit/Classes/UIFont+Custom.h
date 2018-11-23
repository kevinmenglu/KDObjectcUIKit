//
//  UIFont+Custom.h
//  KDObjectKit
//
//  Created by 徐梦路 on 2018/11/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIFont (Custom)
#pragma mark - Custom Font Method

+ (nonnull UIFont *)customThinFont:(CGFloat)size;
+ (nonnull UIFont *)customLightFont:(CGFloat)size;
+ (nonnull UIFont *)customRegularFont:(CGFloat)size;
+ (nonnull UIFont *)customMediumFont:(CGFloat)size;
+ (nonnull UIFont *)customSemiboldFont:(CGFloat)size;
@end

NS_ASSUME_NONNULL_END
