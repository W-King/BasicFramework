//
//  RequestInfoConfiguration.m
//  BigSport
//
//  Created by 刘凡 on 16/4/11.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "RequestInfoModel.h"
#import "APIHeader.h"
@implementation RequestInfoModel
+ (instancetype)initName:(NSString *)name path:(NSString *)path returnType:(NSString *)returnType
{
    return [self initName:name path:path returnType:returnType method:@"POST" timeOut:20];
}

+ (instancetype)initName:(NSString *)name path:(NSString *)path returnType:(NSString *)returnType method:(NSString *)method timeOut:(NSInteger)time
{
    RequestInfoModel *model = [[RequestInfoModel alloc] init];
    model.name = name;
    model.method = method;
    model.timeout = time;
    model.returnType = returnType;
    model.url = [NSString stringWithFormat:@"%@/%@/%@",kWebAPIDefine,path,model.name];
    return model;
}
@end
