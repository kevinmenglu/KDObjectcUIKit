//
//  KDNoDataView.h
//  kido
//
//  Created by 慕常青 on 2018/9/28.
//  Copyright © 2018年 kidoroo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^KDNoDataViewTouchBlock)(void);

NS_ASSUME_NONNULL_BEGIN

@interface KDNoDataView : UIView

+ (nonnull instancetype)noDataView:(CGRect)showFrame WithTouchBlock:(nonnull KDNoDataViewTouchBlock)block;

+ (nonnull instancetype)noDataView:(CGRect)showFrame
                       withContent:(nullable NSString *)content
                    WithTouchBlock:(nonnull KDNoDataViewTouchBlock)block;

@property (nonnull, nonatomic, copy) KDNoDataViewTouchBlock block;

@property (nullable, nonatomic, copy) NSString *content;

@end

NS_ASSUME_NONNULL_END
