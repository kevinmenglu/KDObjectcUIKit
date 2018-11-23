//
// Copyright 2009-2010 Facebook
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import <UIKit/UIKit.h>
@interface UIView (Sizes)


/**
增加一个以320宽度为基础的坐标转换

 @param width 换算的宽
 @return 与320的比例换算后的值
 */
CGFloat KKConvertWidthForDeviceScale(CGFloat width);


/**
 增加一个以iPhone6宽度为基础的坐标转换

 @param width 换算的宽
 @return 与375的比例换算后的值
 */
CGFloat KKConvertWidthForIp6Scale(CGFloat width);

/**
 * Shortcut for frame.origin.x.
 *
 * Sets frame.origin.x = left
 */
@property (nonatomic) CGFloat cg_left;

/**
 * Shortcut for frame.origin.y
 *
 * Sets frame.origin.y = top
 */
@property (nonatomic) CGFloat cg_top;

/**
 * Shortcut for frame.origin.x + frame.size.width
 *
 * Sets frame.origin.x = right - frame.size.width
 */
@property (nonatomic) CGFloat cg_right;

/**
 * Shortcut for frame.origin.y + frame.size.height
 *
 * Sets frame.origin.y = bottom - frame.size.height
 */
@property (nonatomic) CGFloat cg_bottom;

/**
 * Shortcut for frame.size.width
 *
 * Sets frame.size.width = width
 */
@property (nonatomic) CGFloat cg_width;

/**
 * Shortcut for frame.size.height
 *
 * Sets frame.size.height = height
 */
@property (nonatomic) CGFloat cg_height;

/**
 * Shortcut for center.x
 *
 * Sets center.x = centerX
 */
@property (nonatomic) CGFloat cg_centerX;

/**
 * Shortcut for center.y
 *
 * Sets center.y = centerY
 */
@property (nonatomic) CGFloat cg_centerY;

/**
 * Return the x coordinate on the screen.
 */
@property (nonatomic, readonly) CGFloat cg_ttScreenX;

/**
 * Return the y coordinate on the screen.
 */
@property (nonatomic, readonly) CGFloat cg_ttScreenY;

/**
 * Return the x coordinate on the screen, taking into account scroll views.
 */
@property (nonatomic, readonly) CGFloat cg_screenViewX;

/**
 * Return the y coordinate on the screen, taking into account scroll views.
 */
@property (nonatomic, readonly) CGFloat cg_screenViewY;

/**
 * Return the view frame on the screen, taking into account scroll views.
 */
@property (nonatomic, readonly) CGRect cg_screenFrame;

/**
 * Shortcut for frame.origin
 */
@property (nonatomic) CGPoint cg_origin;

/**
 * Shortcut for frame.size
 */
@property (nonatomic) CGSize cg_size;

/**
 * Finds the first descendant view (including this view) that is a member of a particular class.
 */
- (UIView*)descendantOrSelfWithClass:(Class)cls;

/**
 * Finds the first ancestor view (including this view) that is a member of a particular class.
 */
- (UIView*)ancestorOrSelfWithClass:(Class)cls;

/**
 * Removes all subviews.
 */
- (void)removeAllSubviews;

/**
 * The view controller whose view contains this view.
 */
- (UIViewController*)viewController;

- (UIImage *)imageFromView;
- (UIImage *)imageFromViewByiOS7NewApi;

- (UIImage *)imageFromViewWithLowResolution:(CGFloat)scale;

- (UIImage *)imageFromViewWithNormalResolution;

- (UIImage *)imageFromViewInRect:(CGRect)rect;

- (UIView *)snapshotViewInRect:(CGRect)rect;

- (CGRect)convertFrameToWindow:(UIWindow *)window;

- (CGRect)expandedFrame:(CGRect)originalFrame withVerticalOffset:(CGFloat)offset;
- (CGRect)expandedFrame:(CGRect)originalFrame withHorizontalOffset:(CGFloat)offset;
- (CGRect)expandedFrame:(CGRect)originalFrame withOffset:(CGFloat)offset;

@end


