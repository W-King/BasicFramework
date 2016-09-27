//
//  BaseViewController+RequestStatus.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/8/22.
//  Copyright © 2016年 pipixia. All rights reserved.
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
