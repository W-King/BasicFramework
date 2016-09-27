//
//  LoadingTool.m
//  BigSport
//
//  Created by 刘凡 on 16/4/19.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "LoadingTool.h"
#import "MBProgressHUD.h"

@implementation LoadingTool

+ (void)showLoadingTo:(UIView *)view
{
    [self showLoadingTo:view isAfterDelay:YES];
}

+ (void)showLoadingTo:(UIView *)view isAfterDelay:(BOOL)after
{
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:view];
    HUD.mode = MBProgressHUDMode_XTY;
    HUD.margin = 30;
    if (after)
    {
        HUD.graceTime = 3;
        HUD.minShowTime = 3;
    }
    [view addSubview:HUD];
    [HUD showAnimated:YES];
}

+ (void)hideProgressHud:(UIViewController *)mainViewController
{
    while ([MBProgressHUD HUDForView:mainViewController.view])
    {
         [MBProgressHUD hideHUDForView:mainViewController.view animated:YES];
    }
}

@end
