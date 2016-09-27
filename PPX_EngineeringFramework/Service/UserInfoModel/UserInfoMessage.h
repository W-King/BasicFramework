//
//  UserInfoMessage.h
//  BigSport
//
//  Created by pipixia on 16/8/3.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfoMessage : NSObject

@property (nonatomic, copy) NSString *userCode;
@property (nonatomic, copy) NSString *userToken;
@property (nonatomic, copy) NSString *isUserWiXin;


+ (UserInfoMessage *)ShareUserInfoModel;

/**
 用户信息 定义宏变量
 */
#define XTY_UserInfo [BSaveMessage ShareUserInfoModel]
#define XTY_UserCode [BSaveMessage ShareUserInfoModel].userCode
#define XTY_UserToken [BSaveMessage ShareUserInfoModel].userToken
#define XTY_IsUserWiXin [BSaveMessage ShareUserInfoModel].isUserWiXin


- (void)resetInfo:(NSDictionary*)aDict;
- (void)clearInfo;

+ (void)saveUserMessage:(NSDictionary *)userMsg;

+ (void)clear;

@end
