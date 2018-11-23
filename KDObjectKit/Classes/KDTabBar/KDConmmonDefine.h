//
//  KDConmmonDefine.h
//  Pods
//
//  Created by 徐梦路 on 2018/11/23.
//

#ifndef KDConmmonDefine_h
#define KDConmmonDefine_h

#define KDGetImage(img)             [UIImage imageNamed:img]

//screen width & height
#define KDScreenWidth [UIScreen mainScreen].bounds.size.width
#define KDScreenHeight [UIScreen mainScreen].bounds.size.height
#define KDRelativeIphone6WidthRatio (MIN(KDScreenWidth,KDScreenHeight) / 375.0)
#define KDRelativeIphone6HeightRatio (MAX(KDScreenHeight,KDScreenWidth) / 667.0)
#define KDPortraitScreenWidth MIN(KDScreenWidth,KDScreenHeight)
#define KDPortraitScreenHeight MAX(KDScreenWidth,KDScreenHeight)

#endif /* KDConmmonDefine_h */
