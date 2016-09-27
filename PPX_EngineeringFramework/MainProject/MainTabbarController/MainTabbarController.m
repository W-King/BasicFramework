//
//  MainTabbarController.m
//  BigSport
//
//  Created by 刘凡 on 16/4/7.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "MainTabbarController.h"
#import "HomeViewController.h"
#import "SportTimeViewController.h"
#import "MessageViewController.h"
#import "MyInfoViewController.h"
#import "BaseNav.h"

#import "BaseMacro.h"
#import "LoginServiceTool.h"
#import "ProjectConfigHeader.h"



@interface MainTabbarController()
<UITabBarControllerDelegate>
{
    BaseNav *messageNav;
}

@end

@implementation MainTabbarController

#pragma mark - Init
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.delegate = self;
        [self creatViewController];
    }
    return self;
}

- (void)creatViewController
{
    HomeViewController *recommendVC = [[HomeViewController alloc] init];
    BaseNav *recommendNav = [[BaseNav alloc] initWithRootViewController:recommendVC];
    recommendNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"推荐" image:[[UIImage imageNamed:@"Tabbar_icon_Recommend_N"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"Tabbar_icon_Recommend_S"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    SportTimeViewController *findViewController = [[SportTimeViewController alloc] init];
    BaseNav *findNav = [[BaseNav alloc] initWithRootViewController:findViewController];
    findNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"时刻" image:[[UIImage imageNamed:@"Tabbar_icon_find_N"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"Tabbar_icon_find_S"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    MessageViewController *messageVC =  [[MessageViewController alloc] init];
    messageNav = [[BaseNav alloc] initWithRootViewController:messageVC];
    messageNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"消息" image:[[UIImage imageNamed:@"Tabbar_message_find_N"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"Tabbar_message_find_S"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    MyInfoViewController *myInfoVC = [[MyInfoViewController alloc] init];
    BaseNav *myInfoNav = [[BaseNav alloc] initWithRootViewController:myInfoVC];
    myInfoNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[[UIImage imageNamed:@"Tabbar_icon_me_N"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"Tabbar_icon_me_S"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    self.viewControllers = @[recommendNav,findNav,messageNav,myInfoNav];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:RGB_COLOR(@"#999999"),NSFontAttributeName:[UIFont systemFontOfSize:10.0f]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, -4)];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:RGB_COLOR(@"#F46B0A"),NSFontAttributeName:[UIFont boldSystemFontOfSize:10.0f]} forState:UIControlStateSelected];
}


#pragma mark - UITabBarControllerDelegate

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    BaseNav *nav = (BaseNav *)viewController;
    if ([((UIViewController *)nav.viewControllers[0]) isKindOfClass:[MyInfoViewController class]]||[((UIViewController *)nav.viewControllers[0]) isKindOfClass:[MessageViewController class]])
    {
        [LoginServiceTool needLoginServiceViewController:self selector:@selector(selectItemWithNavType:) withObject:viewController];
        return NO;
    }
//    else if ([((UIViewController *)nav.viewControllers[0]) isKindOfClass:[FindViewController class]])
//    {
//        FindViewController * findviewController = (FindViewController *)nav.viewControllers[0];
//        [findviewController needReloadInfo];
//    }
    return YES;
}

#pragma mark - Other

- (void)selectItemWithNavType:(BaseNav *)viewController
{
    self.selectedIndex = [self.viewControllers indexOfObject:viewController];
}



@end
