//
//  BaseViewController+RequestStatus.m
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/8/22.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "BaseViewController+RequestStatus.h"

@implementation BaseViewController (RequestStatus)
- (void)requestStatusSuccess
{
    [LoadingTool hideProgressHud:self];
    [self hiddenNoDataView];
}

- (void)requestStatusFail
{
    [LoadingTool hideProgressHud:self];
    [WarningTool showToastNetError];
}

- (void)requestStatusDataError:(NSString *)error
{
    [LoadingTool hideProgressHud:self];
    [WarningTool showToastHintWithText:error];
}


@end
