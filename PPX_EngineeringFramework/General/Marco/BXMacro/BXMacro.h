//
//  BXMacro.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/22.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#ifndef BXMacro_h
#define BXMacro_h

/* ************************************************************************************************* */

//屏幕宽高
#define SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height


/* ************************************************************************************************* */

//图片加载
#define BXImg(NAME, EXT)        [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:(NAME) ofType:(EXT)]]
#define BX_IMAGE(imgName) [UIImage imageNamed:imgName]


/* ************************************************************************************************* */

//颜色
#define RGB_COLOR(_STR_) ([UIColor colorWithRed:[[NSString stringWithFormat:@"%lu", strtoul([[_STR_ substringWithRange:NSMakeRange(1, 2)] UTF8String], 0, 16)] intValue] / 255.0 green:[[NSString stringWithFormat:@"%lu", strtoul([[_STR_ substringWithRange:NSMakeRange(3, 2)] UTF8String], 0, 16)] intValue] / 255.0 blue:[[NSString stringWithFormat:@"%lu", strtoul([[_STR_ substringWithRange:NSMakeRange(5, 2)] UTF8String], 0, 16)] intValue] / 255.0 alpha:1.0])

#define RGBR_COLOR(r, g, b, a)   [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]

/* ************************************************************************************************* */

//字体大小
#define FH(x)  [UIFont systemFontOfSize:(x)]
#define FHB(x) [UIFont boldSystemFontOfSize:(x)]

/* ************************************************************************************************* */

// View 圆角和加边框
#define ViewBorderRadius(View, Radius, Width, Color)\
                                \
                                [View.layer setCornerRadius:(Radius)];\
                                [View.layer setMasksToBounds:YES];\
                                [View.layer setBorderWidth:(Width)];\
                                [View.layer setBorderColor:[Color CGColor]]

// View 圆角
#define ViewRadius(View, Radius)\
                                \
                                [View.layer setCornerRadius:(Radius)];\
                                [View.layer setMasksToBounds:YES]

/* ************************************************************************************************* */

//log 输出


/* ************************************************************************************************* */



#endif /* BXMacro_h */
