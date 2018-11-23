//
//  KDConmmonDefine.h
//  Pods
//
//  Created by 徐梦路 on 2018/11/23.
//

#ifndef KDConmmonDefine_h
#define KDConmmonDefine_h

#define KDGetImage(img)             [UIImage imageNamed:img]

#define KD
//screen width & height
#define KDScreenWidth [UIScreen mainScreen].bounds.size.width
#define KDScreenHeight [UIScreen mainScreen].bounds.size.height
#define KDRelativeIphone6WidthRatio (MIN(KDScreenWidth,KDScreenHeight) / 375.0)
#define KDRelativeIphone6HeightRatio (MAX(KDScreenHeight,KDScreenWidth) / 667.0)
#define KDPortraitScreenWidth MIN(KDScreenWidth,KDScreenHeight)
#define KDPortraitScreenHeight MAX(KDScreenWidth,KDScreenHeight)

//bar height
#define KDNavBarHeight      44.0f
#define KDStateBarHeight    [UIApplication sharedApplication].statusBarFrame.size.height
#define KDTopBarHeight      [UIApplication sharedApplication].statusBarFrame.size.height + 44.0f
#define KDTabBarHeight      49.0f
/**
 * 空字符串判断
 */
#define NULLString(string) ((string == nil) || ([string isKindOfClass:[NSNull class]]) || (![string isKindOfClass:[NSString class]])||[string isEqualToString:@""] || [string isEqualToString:@"<null>"] || [string isEqualToString:@"(null)"] || [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]== 0 )

#define KDColor(r,g,b)              [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1]
#define KDColorWithAlpha(r,g,b,a)   [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]

#define KDColorWithHexValue(hexValue) [UIColor kdColorWithHex:(hexValue)]
#define KDColorWithHexValueAndAlpha(hexValue,alphaValue) [UIColor kdColorWithHex:(hexValue) andAlpha:(alphaValue)]


//System Font relative
#define KDFont(font)                [UIFont systemFontOfSize:font]
#define KDBoldFont(font)            [UIFont boldSystemFontOfSize:font]
//Custom Font relative
#define KDThinFont(font)            [UIFont customThinFont:font]
#define KDLightFont(font)           [UIFont customLightFont:font]
#define KDRegularFont(font)         [UIFont customRegularFont:font]
#define KDMediumFont(font)          [UIFont customMediumFont:font]
#define KDSemiboldFont(font)        [UIFont customSemiboldFont:font]

/**
 设备版本
 
 @return CGFloat
 */
#define KDSystemVersionFloatValue    [[[UIDevice currentDevice] systemVersion] floatValue]

#endif /* KDConmmonDefine_h */
