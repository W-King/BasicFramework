//
//  ServiceRoot.m
//  BigSport
//
//  Created by 刘凡 on 16/4/11.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "RequestInfoManage.h"
#import "ServiceMetaData.h"
static NSMutableDictionary *methods;

@implementation RequestInfoManage

+ (void)load
{
    [RequestInfoManage loadServiceMethod];
}

+ (void)loadServiceMethod
{
    methods = [[NSMutableDictionary alloc] init];
    for (RequestInfoModel *model in [ServiceMetaData serviceData])
    {
        [methods setObject:model forKey:model.name];
    }
}

+ (RequestInfoModel *)findMethod:(NSString *)methodName
{
    return [methods objectForKey:methodName];
}


@end
