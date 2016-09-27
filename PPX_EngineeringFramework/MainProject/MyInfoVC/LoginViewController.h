//
//  LoginViewController.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "BaseViewController.h"

typedef void (^LoginResult)(BOOL isLogin);

typedef NS_ENUM(NSInteger,LoginViewControllerShowType)
{
    LoginViewControllerShowType_Push = 0,
    LoginViewControllerShowType_Present,
};

@interface LoginViewController : BaseViewController

@property (nonatomic,copy) LoginResult loginResult;
@property (nonatomic,assign)LoginViewControllerShowType showType;

- (instancetype)initWithShowType:(LoginViewControllerShowType)type;

@end
