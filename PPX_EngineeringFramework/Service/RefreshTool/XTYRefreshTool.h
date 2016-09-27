//
//  XTYRefreshTool.h
//  BigSport
//
//  Created by 刘凡 on 16/6/1.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJRefresh.h"
@interface XTYRefreshTool : NSObject
+ (void)conterllor:(id)vc tableView:(UIScrollView *)table headAction:(SEL)headAction footAction:(SEL)footAction;
@end
