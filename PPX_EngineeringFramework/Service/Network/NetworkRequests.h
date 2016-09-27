//
//  NetworkRequests.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkRequests : NSObject
+ (instancetype)sharedClient;

- (NSURLSessionDataTask *)requestWithName:(NSString *)urlName withParameters:(NSMutableDictionary *)dict successCallBack:(void(^)(id))successCallback failCallback:(void(^)(NSString *))failCallback;
@end
