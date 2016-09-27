//
//  RequestInfoManage.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestInfoModel.h"
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
