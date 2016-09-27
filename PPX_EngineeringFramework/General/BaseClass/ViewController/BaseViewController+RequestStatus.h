//
//  BaseViewController+RequestStatus.h
//  BigSport
//
//  Created by 刘凡 on 16/8/4.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "BaseViewController.h"
#import "LoadingTool.h"
#import "WarningTool.h"
#import "BaseViewController+NODataView.h"

@interface BaseViewController (RequestStatus)
- (void)requestStatusSuccess;
- (void)requestStatusFail;
- (void)requestStatusDataError:(NSString *)error;
@end
