//
//  BaseViewController+NODataView.h
//  BigSport
//
//  Created by 刘凡 on 16/5/26.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "BaseViewController.h"
@interface BaseViewController (NODataView)
- (void)showNoDataViewType:(NODataViewType)type;
- (void)showNoDataViewType:(NODataViewType)type rect:(CGRect)rect;
- (void)hiddenNoDataView;
- (void)noDataButtonEvent;
@end
