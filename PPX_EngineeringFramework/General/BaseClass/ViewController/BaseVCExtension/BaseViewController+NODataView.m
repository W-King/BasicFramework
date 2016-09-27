//
//  BaseViewController+NODataView.m
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//


#import "BaseViewController+NODataView.h"

@implementation BaseViewController (NODataView)

- (void)showNoDataViewType:(NODataViewType)type
{
    [self showNoDataViewType:type rect:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height)];
}

- (void)showNoDataViewType:(NODataViewType)type rect:(CGRect)rect
{
    if (!self.noDataView)
    {
        self.noDataView = [[NODataView alloc] initWithFrame:rect type:type] ;
        [self.view addSubview:self.noDataView];
        
        UIButton *noDataButton = [UIButton buttonWithType:UIButtonTypeCustom];
        noDataButton.frame = self.noDataView.bounds;
        noDataButton.tag = 1000;
        [noDataButton addTarget:self action:@selector(noDataButtonEvent) forControlEvents:UIControlEventTouchUpInside];
        [self.noDataView addSubview:noDataButton];
    }
    
    [self.view bringSubviewToFront:self.noDataView];
    [self.noDataView reloadFrame:rect type:type];
    self.noDataView.hidden = NO;
}

- (void)hiddenNoDataView
{
    self.noDataView.hidden = YES;
}

- (void)noDataButtonEvent
{
    
}

@end
