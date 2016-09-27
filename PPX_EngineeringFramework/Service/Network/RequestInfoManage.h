//
//  ServiceRoot.h
//  BigSport
//
//  Created by 刘凡 on 16/4/11.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestInfoModel.h"
#import "APIHeader.h"
/**
 *   本类为接口信息配置管理类
 *   主要作用：
 *   1、管理接口信息配置类
 *
 *
 */

@interface RequestInfoManage : NSObject

+ (RequestInfoModel *)findMethod:(NSString *)methodName;

@end
