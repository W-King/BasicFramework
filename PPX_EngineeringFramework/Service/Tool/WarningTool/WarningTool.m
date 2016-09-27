//
//  WarningTool.m
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "WarningTool.h"
#import "TKAlertCenter.h"

@implementation WarningTool

+ (void)showToastHintWithText:(NSString *)message
{
    if (message.length >0)
    {
        TKAlertCenter *alert = [TKAlertCenter defaultCenter];
        [alert postAlertWithMessage:message];
    }
}

+ (void)showToastNetError
{
    TKAlertCenter *alert = [TKAlertCenter defaultCenter];
    [alert postAlertWithMessage:@"网络异常请稍后再试"];
}

@end
