//
//  Request.h
//  BigSport
//
//  Created by 刘凡 on 16/4/11.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APIHeader.h"

@interface NetworkRequests : NSObject
+ (instancetype)sharedClient;

- (NSURLSessionDataTask *)requestWithName:(NSString *)urlName withParameters:(NSMutableDictionary *)dict successCallBack:(void(^)(id))successCallback failCallback:(void(^)(NSString *))failCallback;
@end
