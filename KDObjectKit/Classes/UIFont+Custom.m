//
//  UIFont+Custom.m
//  KDObjectKit
//
//  Created by 徐梦路 on 2018/11/23.
//

#import "UIFont+Custom.h"

@implementation UIFont (Custom)

#pragma mark - Font Method
+ (nonnull UIFont *)customThinFont:(CGFloat)size
{
    if (KDSystemVersionFloatValue >= 9.0)
    {
        return [UIFont fontWithName:@"PingFangSC-Thin" size:size];
    }
    else
    {
        return [UIFont systemFontOfSize:size];
    }
}

+ (nonnull UIFont *)customLightFont:(CGFloat)size
{
    if (KDSystemVersionFloatValue >= 9.0)
    {
        return [UIFont fontWithName:@"PingFangSC-Light" size:size];
    }
    else
    {
        return [UIFont systemFontOfSize:size];
    }
    
}

+ (nonnull UIFont *)customRegularFont:(CGFloat)size
{
    if (KDSystemVersionFloatValue >= 9.0)
    {
        return [UIFont fontWithName:@"PingFangSC-Regular" size:size];
    }
    else
    {
        return [UIFont boldSystemFontOfSize:size];
    }
}

+ (nonnull UIFont *)customMediumFont:(CGFloat)size
{
    if (KDSystemVersionFloatValue >= 9.0)
    {
        return [UIFont fontWithName:@"PingFangSC-Medium" size:size];
    }else
    {
        return [UIFont boldSystemFontOfSize:size];
    }
}

+ (UIFont *)customSemiboldFont:(CGFloat)size
{
    if (KDSystemVersionFloatValue >= 9.0)
    {
        return [UIFont fontWithName:@"PingFangSC-Semibold" size:size];
    }
    else
    {
        return [UIFont boldSystemFontOfSize:size];
    }
}
@end
