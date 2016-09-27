//
//  BaseViewController+Pressent.m
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/8/22.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "BaseViewController+Pressent.h"

@implementation BaseViewController (Pressent)
- (void)configWithPresentAndHiddenNav:(BOOL)hidden
{
    if (hidden)
    {
        //隐藏 Nav
        self.customNav.hidden = YES;
        [self.customNav.backButton removeFromSuperview];
        
        [self.customNav setLeftNavButton:[[self.customNav class] createNavButtonByImageNormal:@"icon_dismiss" imageSelected:@"icon_dismiss" target:self action:@selector(dismissButtonEvent)]];
        [self.view addSubview:self.customNav.leftButton];
    }
    else
    {
        [self.customNav setLeftNavButton:[[self.customNav class] createNavButtonByImageNormal:@"icon_dismiss" imageSelected:@"icon_dismiss" target:self action:@selector(dismissButtonEvent)]];
    }
}

- (void)dismissButtonEvent
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
