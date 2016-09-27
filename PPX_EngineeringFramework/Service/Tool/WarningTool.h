//
//  WarningTool.h
//  BigSport
//
//  Created by 刘凡 on 16/4/14.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WarningTool : NSObject
+ (void)showToastHintWithText:(NSString *)message;
+ (void)showToastNetError;
@end
