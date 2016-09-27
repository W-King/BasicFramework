//
//  RequestInfoConfiguration.h
//  BigSport
//
//  Created by 刘凡 on 16/4/11.
//  Copyright © 2016年 iCHSY. All rights reserved.
//


/**
 *   本类为接口信息配置类
 *   主要作用：
 *   1、针对每个接口来配置相应的请求信息
 *
 *
 */
#import <Foundation/Foundation.h>

@interface RequestInfoModel : NSObject

+ (instancetype)initName:(NSString *)name path:(NSString *)path returnType:(NSString *)returnType;
+ (instancetype)initName:(NSString *)name path:(NSString *)path returnType:(NSString *)returnType method:(NSString *)method timeOut:(NSInteger)time;

//网络请求的名称
@property (nonatomic,strong) NSString *name;
//实际请求地址
@property (nonatomic,strong) NSString *url;
//请求方式
@property (nonatomic,strong) NSString *method;
//请求超时时间
@property (nonatomic) NSInteger timeout;
//返回值类型
@property (nonatomic,strong) NSString *returnType;

@end
