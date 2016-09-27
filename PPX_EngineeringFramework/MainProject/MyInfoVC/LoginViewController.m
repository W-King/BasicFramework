//
//  LoginViewController.m
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (instancetype)initWithShowType:(LoginViewControllerShowType)type
{
    self = [self init];
    if (self) {
        self.showType = type;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initUI];

}

#pragma mark - Init UI

- (void)modifyCustomNav
{
    [self.customNav setNavTitle:@"登录"];
    
    if (_showType == LoginViewControllerShowType_Present)
    {
        [self.customNav setLeftNavButton:[[self.customNav class] createNavButtonByImageNormal:@"icon_dismiss" imageSelected:@"icon_dismiss" target:self action:@selector(dismissButtonEvent)]];
    }
}

- (void)initUI
{
    [self modifyCustomNav];
}


#pragma mark - Button Event

- (void)dismissButtonEvent
{
    self.loginResult(NO);
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
