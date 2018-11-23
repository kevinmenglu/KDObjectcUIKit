//
//  UIColor+HexColor.m
//  kido
//
//  Created by 慕常青 on 2018/6/12.
//  Copyright © 2018年 kidoroo. All rights reserved.
//

#import "UIColor+HexColor.h"

@implementation UIColor (HexColor)

+ (UIColor *)kdColorWithHex:(UInt32)hex
{
    return [UIColor kdColorWithHex:hex andAlpha:1];
}

+ (UIColor *)kdColorWithHex:(UInt32)hex andAlpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((hex >> 16) & 0xFF)/255.0
                           green:((hex >> 8) & 0xFF)/255.0
                            blue:(hex & 0xFF)/255.0
                           alpha:alpha];
}

@end
