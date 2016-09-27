//
//  ServiceMetaData.m
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//


#import "ServiceMetaData.h"
#import "RequestInfoModel.h"

static NSArray *metaData;
@implementation ServiceMetaData

+ (void)configMetaData
{                 //用户登录接口
    metaData = @[[RequestInfoModel initName:@"signLogin"
                                       path:@"userController"
                                 returnType:@"LoginModel"],
                 //用户退出接口
                 [RequestInfoModel initName:@"loginOut"
                                       path:@"userController"
                                 returnType:@"ResultModel"],
                 //app新首页接口
                 [RequestInfoModel initName:@"homePageSecond"
                                       path:@"homeController"
                                 returnType:@"HomePageMainModel"],];
}

+(NSArray *)serviceData
{
    [self configMetaData];
    return metaData;
}

@end
