//
//  NetworkRequests.m
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "NetworkRequests.h"
#import "AFHTTPSessionManager.h"
#import "RequestInfoManage.h"
#import "JSONModel.h"
#import "NetworkRequestsTool.h"
@implementation NetworkRequests

static AFHTTPSessionManager *manager = nil;

+(instancetype)sharedClient
{
    static NetworkRequests *request = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        request = [[NetworkRequests alloc] init];
    });
    
    return request;
}

- (id)init
{
    self = [super init];
    
    if (self)
    {
        manager = [AFHTTPSessionManager manager];

        AFHTTPRequestSerializer *serializer = [AFJSONRequestSerializer serializer];
        serializer.timeoutInterval = 20;
        manager.requestSerializer = serializer;
        manager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/json"];
    }
    return self;
}

- (NSURLSessionDataTask *)requestWithName:(NSString *)urlName withParameters:(NSMutableDictionary *)dict successCallBack:(void(^)(id))successCallback failCallback:(void(^)(NSString *))failCallback
{
    RequestInfoModel *method = [RequestInfoManage findMethod:urlName];
    manager.requestSerializer.timeoutInterval = method.timeout;
       
    NSURLSessionDataTask *task = [manager POST:method.url parameters:dict progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject)
    {
        if (successCallback)
        {
            Class cla = NSClassFromString(method.returnType);
            id object = [(JSONModel *)[cla alloc] initWithDictionary:responseObject error:nil];
            successCallback(object);
        }
    }
    failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error)
    {
        if (failCallback)
        {
            failCallback([NSString stringWithFormat:@"%@",error]);
        }
    }];
    return task;
}


@end
