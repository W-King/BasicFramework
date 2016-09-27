//
//  LoadingTool.h
//  BigSport
//
//  Created by 刘凡 on 16/4/19.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class MBProgressHUD;
@interface LoadingTool : NSObject
+ (void)showLoadingTo:(UIView *)view;
+ (void)showLoadingTo:(UIView *)view isAfterDelay:(BOOL)after;
+ (void)hideProgressHud:(UIViewController *)mainViewController;
@end
