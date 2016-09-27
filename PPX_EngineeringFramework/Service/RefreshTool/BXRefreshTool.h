//
//  BXRefreshTool.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJRefresh.h"

@interface BXRefreshTool : NSObject

+ (void)conterllor:(id)vc tableView:(UIScrollView *)table headAction:(SEL)headAction footAction:(SEL)footAction;


@end
