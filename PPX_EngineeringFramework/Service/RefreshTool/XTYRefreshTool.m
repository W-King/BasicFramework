//
//  XTYRefreshTool.m
//  BigSport
//
//  Created by 刘凡 on 16/6/1.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "XTYRefreshTool.h"

@implementation XTYRefreshTool

+ (void)conterllor:(id)vc tableView:(UIScrollView *)table headAction:(SEL)headAction footAction:(SEL)footAction
{
    // 设置回调（一旦进入刷新状态，就调用target的action，也就是调用self的loadNewData方法）
    MJRefreshGifHeader *header = [MJRefreshGifHeader headerWithRefreshingTarget:vc refreshingAction:headAction];
    header.lastUpdatedTimeLabel.hidden = YES;
    header.stateLabel.hidden = YES;
    
    NSMutableArray * imageArray = [[NSMutableArray alloc] init];
    for(int i = 0 ; i < 17;i ++)
    {
        [imageArray addObject:[UIImage imageNamed:[NSString stringWithFormat:@"loading%d",i+1]]];
    }
    // 设置普通状态的动画图片
    [header setImages:@[[UIImage imageNamed:@"loading17"]] forState:MJRefreshStateIdle];
    // 设置即将刷新状态的动画图片（一松开就会刷新的状态）
    [header setImages:@[[UIImage imageNamed:@"loading17"]] forState:MJRefreshStatePulling];
    // 设置正在刷新状态的动画图片
    [header setImages:imageArray forState:MJRefreshStateRefreshing];
    table.mj_header = header;
    
    
    MJRefreshAutoGifFooter *footer = [MJRefreshAutoGifFooter footerWithRefreshingTarget:vc refreshingAction:footAction];
    // 设置刷新图片
    [footer setImages:imageArray forState:MJRefreshStateRefreshing];
    footer.refreshingTitleHidden = YES;
    [footer setTitle:@"" forState:MJRefreshStateIdle];
    // 设置尾部
    table.mj_footer = footer;
}
@end
