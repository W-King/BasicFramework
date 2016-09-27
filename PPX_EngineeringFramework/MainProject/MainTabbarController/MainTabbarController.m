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
#import "MyInfoViewController.h"
#import "BaseNav.h"
#import "BaseColorMacro.h"
#import "LoginServiceTool.h"
#import "ProjectConfigHeader.h"
#import "UserInfoTool.h"
#import "MessageViewController.h"
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
        [self addObserverEvent];
    }
    return self;
}

- (void)creatViewController
{
//    RecommendViewController *recommendVC = [[RecommendViewController alloc] init];
    HomeViewController *recommendVC = [[HomeViewController alloc] init];
    BaseNav *recommendNav = [[BaseNav alloc] initWithRootViewController:recommendVC];
    recommendNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"推荐" image:[[UIImage imageNamed:@"Tabbar_icon_Recommend_N"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"Tabbar_icon_Recommend_S"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
   
// V1.1.0  发现更换为运动时刻 LF
//    FindViewController *findViewController = [[FindViewController alloc] init];
//    BaseNav *findNav = [[BaseNav alloc] initWithRootViewController:findViewController];
//     findNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"时刻" image:[[UIImage imageNamed:@"Tabbar_icon_find_N"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:@"Tabbar_icon_find_S"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
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

- (void)addObserverEvent
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(logoutEvent) name:@"XTYLogoutEvent" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(homeEvent) name:@"XTYHomeEvent" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(MomentEvent) name:@"XTYMomentEvent" object:nil];


    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(messageNavNumber:) name:@"XTYMessageNumber" object:nil];
    
    

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

#pragma mark - NSNotification Event
- (void)homeEvent
{
    self.selectedIndex = 0;
}
- (void)MomentEvent
{
    self.selectedIndex = 1;
}
- (void)logoutEvent
{
    self.selectedIndex = 0;
    messageNav.tabBarItem.badgeValue = nil;
}

- (void)messageNavNumber:(NSNotification*)notificationNumber
{
    NSDictionary *nameDictionary = [notificationNumber userInfo];
    NSString *numberStr = nil;
    
    if ([nameDictionary[@"messsageNumber"] intValue] > 0)
    {
        numberStr = nameDictionary[@"messsageNumber"];
    }
    messageNav.tabBarItem.badgeValue = numberStr;
}

@end
