//
//  UIView+Distribution.h
//  LessonUITableView
//
//  Created by lanouhn on 13-12-25.
//  Copyright (c) 2013年 lanouhn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Distribution)

@property (nonatomic, readonly) CGFloat left;
@property (nonatomic, readonly) CGFloat right;
@property (nonatomic, readonly) CGFloat top;
@property (nonatomic, readonly) CGFloat bottom;
@property (nonatomic, readonly) CGFloat fWidth;
@property (nonatomic, readonly) CGFloat fHeight;

@end
