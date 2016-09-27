//
//  NetworkRequestsTool.h
//  BigSport
//
//  Created by 刘凡 on 16/4/15.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkRequestsTool : NSObject

+ (NSString *)jsonStrWithDictionary:(NSDictionary *)dic;

+ (NSString *)appVersion;
@end
