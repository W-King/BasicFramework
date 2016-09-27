//
//  BaseReuqestTableViewController.m
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "BaseReuqestTableViewController.h"
#import "BXRefreshTool.h"
#define BaseRefreshStartPageIndex 1
@interface BaseReuqestTableViewController ()
{
   
}
@end


@implementation BaseReuqestTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initRequestTableViewData];
    [self initRequestBaseTableViewUI];
}

#pragma mark - 初始化部分
#pragma mark - Init Data

- (void)initRequestTableViewData
{
    _pageIndex = BaseRefreshStartPageIndex;
}

#pragma mark - Init UI

- (void)configBaseTableView
{
    [BXRefreshTool conterllor:self tableView:mainTableView headAction:@selector(headerRequset) footAction:@selector(footerRequest)];
}


- (void)initRequestBaseTableViewUI
{
    [self configBaseTableView];
}


#pragma mark - 网络请求部分(Request Event)
#pragma mark -

/**
 *  子类重写用
 *
 *  @param isHeader 是否是下拉
 */
- (void)requestIsHeader:(BOOL)isHeader
{
    
}

- (void)beginRefreshing
{
    [mainTableView.mj_header beginRefreshing];
}

#pragma mark - 事件、回调部分
#pragma mark - 上下拉回调事件

- (void)headerRequset
{
    [self startPageIndex];
    [self requestIsHeader:YES];
}

- (void)footerRequest
{
    [self nextPageIndex];
    [self requestIsHeader:NO];
}

- (void)requestEnd:(BOOL)isHeader haveMoreData:(BOOL)haveMoreData
{
    if (isHeader)
    {
        [mainTableView.mj_header endRefreshing];
        if (haveMoreData)
        {
            mainTableView.mj_footer.hidden = NO;
            [mainTableView.mj_footer resetNoMoreData];
        }
        else
        {
            mainTableView.mj_footer.hidden = YES;
            [mainTableView.mj_footer endRefreshingWithNoMoreData];
        }
    }
    else
    {
        if (haveMoreData)
        {
            mainTableView.mj_footer.hidden = NO;
            [mainTableView.mj_footer endRefreshing];
        }
        else
        {
            mainTableView.mj_footer.hidden = YES;
            [mainTableView.mj_footer endRefreshingWithNoMoreData];
        }
    }
}


#pragma mark - 页码处理事件

- (void)resetPageIndex
{
    _pageIndex = _pageIndex == BaseRefreshStartPageIndex ? BaseRefreshStartPageIndex : _pageIndex - 1;
}

- (void)startPageIndex
{
    _pageIndex = BaseRefreshStartPageIndex;
}

- (void)nextPageIndex
{
    _pageIndex += 1;
}

#pragma mark - BaseViewController+RequestStatus

- (void)requestStatusDataError:(NSString *)error isHeader:(BOOL)isHeader
{
    [self resetPageIndex];
    [self requestEnd:isHeader haveMoreData:YES];
    [self requestStatusDataError:error];
}

- (void)requestStatusFailByIsHeader:(BOOL)isHeader
{
    [self resetPageIndex];
    [self requestEnd:isHeader haveMoreData:YES];
    [self requestStatusFail];
}


@end
