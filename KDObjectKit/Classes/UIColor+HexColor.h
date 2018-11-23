//
//  UIColor+HexColor.h
//  kido
//
//  Created by 慕常青 on 2018/6/12.
//  Copyright © 2018年 kidoroo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HexColor)

+ (UIColor *)kdColorWithHex:(UInt32)hex;
+ (UIColor *)kdColorWithHex:(UInt32)hex andAlpha:(CGFloat)alpha;

@end
