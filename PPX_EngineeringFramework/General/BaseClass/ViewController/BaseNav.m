//
//  BaseNav.m
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//
#import "BaseNav.h"
@interface BaseNav ()

@end

@implementation BaseNav

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationBar.hidden = YES;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count >= 1)
    {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

@end
