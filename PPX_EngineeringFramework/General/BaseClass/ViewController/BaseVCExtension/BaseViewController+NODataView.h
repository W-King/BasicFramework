//
//  BaseViewController+NODataView.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "BaseViewController.h"
@interface BaseViewController (NODataView)
- (void)showNoDataViewType:(NODataViewType)type;
- (void)showNoDataViewType:(NODataViewType)type rect:(CGRect)rect;
- (void)hiddenNoDataView;
- (void)noDataButtonEvent;
@end
