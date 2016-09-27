//
//  BaseRequestCollectionViewController.m
//  BigSport
//
//  Created by 刘凡 on 16/6/13.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "BaseRequestCollectionViewController.h"
#import "XTYRefreshTool.h"
#define BRCStartPageIndex 1
@interface BaseRequestCollectionViewController ()

@end

@implementation BaseRequestCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initRequestCollectionViewData];
    [self initRequestCollectionViewUI];
}


#pragma mark - 初始化部分
#pragma mark - Init Data

- (void)initRequestCollectionViewData
{
    pageIndex = BRCStartPageIndex;
}

#pragma mark - Init UI

- (void)configBaseCollectionViewView
{
    [XTYRefreshTool conterllor:self tableView:mainCollectionView headAction:@selector(headerRequset) footAction:@selector(footerRequest)];
}

- (void)initRequestCollectionViewUI
{
    [self configBaseCollectionViewView];
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
    [mainCollectionView.mj_header beginRefreshing];
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
        [mainCollectionView.mj_header endRefreshing];
        if (haveMoreData)
        {
            mainCollectionView.mj_footer.hidden = NO;
            [mainCollectionView.mj_footer resetNoMoreData];
        }
        else
        {
            mainCollectionView.mj_footer.hidden = YES;
            [mainCollectionView.mj_footer endRefreshingWithNoMoreData];
        }
    }
    else
    {
        if (haveMoreData)
        {
            mainCollectionView.mj_footer.hidden = NO;
            [mainCollectionView.mj_footer endRefreshing];
        }
        else
        {
            mainCollectionView.mj_footer.hidden = YES;
            [mainCollectionView.mj_footer endRefreshingWithNoMoreData];
        }
    }
}


#pragma mark - 页码处理事件

- (void)resetPageIndex
{
    pageIndex = pageIndex == BRCStartPageIndex ? BRCStartPageIndex : pageIndex - 1;
}

- (void)startPageIndex
{
    pageIndex = BRCStartPageIndex;
}

- (void)nextPageIndex
{
    pageIndex += 1;
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
