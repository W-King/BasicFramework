//
//  LoadingTool.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class MBProgressHUD;
@interface LoadingTool : NSObject
+ (void)showLoadingTo:(UIView *)view;
+ (void)showLoadingTo:(UIView *)view isAfterDelay:(BOOL)after;
+ (void)hideProgressHud:(UIViewController *)mainViewController;
@end
