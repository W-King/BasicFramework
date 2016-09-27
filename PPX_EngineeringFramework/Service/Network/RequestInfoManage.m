//
//  RequestInfoManage.m
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
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
