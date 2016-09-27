//
//  UserInfoMessage.m
//  BigSport
//
//  Created by pipixia on 16/8/3.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "UserInfoMessage.h"

#define usernameMessage @"usernameMessage"
static UserInfoMessage *userInfoMessage = nil;

@implementation UserInfoMessage

- (void)resetInfo:(NSDictionary*)aDict
{
    self.userCode = [aDict objectForKey:@"userCode"];
    self.userToken = [aDict objectForKey:@"userToken"];
    self.isUserWiXin = [aDict objectForKey:@"isUserWiXin"];
}

-(void)clearInfo{
    self.userCode = @"";
    self.userToken = @"";
    self.isUserWiXin = @"";
}

- (id)init {
    self = [super init];
    if (self) {
        self.userCode = @"";
        self.userToken = @"";
        self.isUserWiXin = @"";
    }
    return self;
}
- (void)dealloc {
    self.userCode = nil;
    self.userToken = nil;
    self.isUserWiXin = nil;
}

+ (UserInfoMessage *)ShareUserInfoModel {
    
    if (!userInfoMessage) {
        userInfoMessage = [[UserInfoMessage alloc] init];
    }
    return userInfoMessage;
}

+ (void)saveUserMessage:(NSDictionary *)userMsg
{
    [[NSUserDefaults standardUserDefaults] setObject:userMsg
                                              forKey:usernameMessage];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+(void)clear
{
    [[NSUserDefaults standardUserDefaults]removeObjectForKey:usernameMessage];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
