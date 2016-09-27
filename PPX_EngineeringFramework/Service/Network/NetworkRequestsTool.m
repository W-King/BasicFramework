//
//  NetworkRequestsTool.m
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "NetworkRequestsTool.h"

@implementation NetworkRequestsTool
+ (NSString *)jsonStrWithDictionary:(NSDictionary *)dic
{
    NSError *error;
    NSData *jsonData = [NSJSONSerialization
                        dataWithJSONObject:dic
                                   options:NSJSONWritingPrettyPrinted
                                     error:&error];
    if (!jsonData)
    {
        NSLog(@"jsonStrWithDictionary: error: %@", error.localizedDescription);
        return @"{}";
    }
    else
    {
        return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
}

+ (NSString *)appVersion
{
    return [[NSBundle mainBundle] infoDictionary][@"CFBundleShortVersionString"] ;
}
@end
