//
//  NODataViewService.m
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "NODataViewService.h"

@implementation NODataViewService

+ (void)showNoDataView:(id)viewControl type:(NODataViewType)type selector:(SEL)selector
{
    [self showNoDataView:viewControl type:type rect:CGRectMake(0, 64, ((UIViewController *)viewControl).view.frame.size.width,  ((UIViewController *)viewControl).view.frame.size.height - 64) selector:selector];
}

+ (void)showNoDataView:(id)viewControl type:(NODataViewType)type rect:(CGRect)rect selector:(SEL)selector
{
    UIView *view = nil;
    if ([viewControl isKindOfClass:[UIViewController class]]) 
    {
        view = ((UIViewController *)viewControl).view;
    }
    else if ([viewControl isKindOfClass:[UIView class]])
    {
        view = (UIView *)viewControl;
    }
    
    NODataView *noDataView = [self haveNoDataView:view];
    if (!noDataView)
    {
        noDataView = [[NODataView alloc] initWithFrame:rect type:type] ;
        [view addSubview:noDataView];

        UIButton *noDataButton = [UIButton buttonWithType:UIButtonTypeCustom];
        noDataButton.frame = noDataView.bounds;
        noDataButton.tag = 1000;
        [noDataView addSubview:noDataButton];
    }
    UIButton *noDataButton = [noDataView viewWithTag:1000];
    
    [noDataButton removeTarget:viewControl action:nil forControlEvents:UIControlEventTouchUpInside];
    
    [noDataButton addTarget:viewControl action:selector forControlEvents:UIControlEventTouchUpInside];
    
    [view bringSubviewToFront:noDataView];
    [noDataView reloadFrame:rect type:type];
    noDataView.hidden = NO;
}

+ (NODataView *)haveNoDataView:(UIView *)view {
    NSEnumerator *subviewsEnum = [view.subviews reverseObjectEnumerator];
    for (UIView *subview in subviewsEnum) {
        if ([subview isKindOfClass:[NODataView class]]) {
            return (NODataView *)subview;
        }
    }
    return nil;
}

+ (void)reloadNoDataView:(id)viewControl info:(NSString *)str
{
    UIView *view = nil;
    if ([viewControl isKindOfClass:[UIViewController class]])
    {
        view = ((UIViewController *)viewControl).view;
    }
    else if ([viewControl isKindOfClass:[UIView class]])
    {
        view = (UIView *)viewControl;
    }
    
    NODataView *noDataView = [self haveNoDataView:view];
    if (noDataView)
    {
        [noDataView setNoDataLabelText:str];
    }
}

+ (void)hiddenNoDataView:(UIView *)view
{
    NSEnumerator *subviewsEnum = [view.subviews reverseObjectEnumerator];
    for (UIView *subview in subviewsEnum) {
        if ([subview isKindOfClass:[NODataView class]])
        {
            subview.hidden = YES;
        }
    }
}
@end
