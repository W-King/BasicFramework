//
//  BaseColorMacro.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/22.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#ifndef BaseColorMacro_h
#define BaseColorMacro_h

#define RGB_COLOR(_STR_) ([UIColor colorWithRed:[[NSString stringWithFormat:@"%lu", strtoul([[_STR_ substringWithRange:NSMakeRange(1, 2)] UTF8String], 0, 16)] intValue] / 255.0 green:[[NSString stringWithFormat:@"%lu", strtoul([[_STR_ substringWithRange:NSMakeRange(3, 2)] UTF8String], 0, 16)] intValue] / 255.0 blue:[[NSString stringWithFormat:@"%lu", strtoul([[_STR_ substringWithRange:NSMakeRange(5, 2)] UTF8String], 0, 16)] intValue] / 255.0 alpha:1.0])



#endif /* ColorMacro_h */
