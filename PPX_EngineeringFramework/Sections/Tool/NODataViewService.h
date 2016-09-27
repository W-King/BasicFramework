//
//  NODataViewService.h
//  BigSport
//
//  Created by karas on 16/8/5.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NODataView.h"
#import <UIKit/UIKit.h>
@interface NODataViewService : NSObject

+ (void)showNoDataView:(id)viewControl type:(NODataViewType)type selector:(SEL)selector;

+ (void)showNoDataView:(id)viewControl type:(NODataViewType)type rect:(CGRect)rect selector:(SEL)selector;

+ (void)reloadNoDataView:(id)viewControl info:(NSString *)str;

+ (void)hiddenNoDataView:(UIView *)view;

@end
