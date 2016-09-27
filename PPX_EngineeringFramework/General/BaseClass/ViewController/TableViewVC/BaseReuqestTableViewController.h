//
//  BaseReuqestTableViewController.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//



/**
 *  包含网络请求的TableViewController
 * 
 */
#import "BaseTableViewController.h"
#import "BaseViewController+RequestStatus.h"
@interface BaseReuqestTableViewController : BaseTableViewController
@property (nonatomic)       NSInteger pageIndex;

//网络请求部分

//子类重写用
- (void)requestIsHeader:(BOOL)isHeader;

- (void)beginRefreshing;

//上下拉请求结束后的事件处理
- (void)requestEnd:(BOOL)isHeader haveMoreData:(BOOL)have;

//网络请求失败 页码复位
- (void)resetPageIndex;

//网络请求异常处理
- (void)requestStatusDataError:(NSString *)error isHeader:(BOOL)isHeader;
- (void)requestStatusFailByIsHeader:(BOOL)isHeader;


@end
