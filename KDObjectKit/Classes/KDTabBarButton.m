//
//  KDTabBarButton.m
//  kido
//
//  Created by peterfeng on 2018/6/19.
//  Copyright © 2018年 kidoroo. All rights reserved.
//

#import "KDTabBarButton.h"

#define KDTabBarButtonImageRatio 0.5

@implementation KDTabBarButton

+ (nonnull instancetype)buttonWithType:(UIButtonType)buttonType{
    KDTabBarButton *btn = [super buttonWithType:buttonType];
    btn.imageView.contentMode = UIViewContentModeCenter;
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    return btn;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGRect rect = contentRect;
    rect.origin.y = 5;
    rect.size.height = rect.size.height * KDTabBarButtonImageRatio;
    return rect;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGRect rect = contentRect;
    rect.origin.y = rect.size.height * KDTabBarButtonImageRatio;
    rect.size.height = rect.size.height*(1 - KDTabBarButtonImageRatio);
    return rect;
}


@end
