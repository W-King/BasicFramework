//
//  WarningTool.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WarningTool : NSObject
+ (void)showToastHintWithText:(NSString *)message;
+ (void)showToastNetError;
@end
