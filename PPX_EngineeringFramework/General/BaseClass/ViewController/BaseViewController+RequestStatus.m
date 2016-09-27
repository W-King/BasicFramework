//
//  BaseViewController+RequestStatus.m
//  BigSport
//
//  Created by 刘凡 on 16/8/4.
//  Copyright © 2016年 iCHSY. All rights reserved.
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
