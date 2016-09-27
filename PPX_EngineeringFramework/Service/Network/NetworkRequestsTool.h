//
//  NetworkRequestsTool.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkRequestsTool : NSObject

+ (NSString *)jsonStrWithDictionary:(NSDictionary *)dic;

+ (NSString *)appVersion;
@end
