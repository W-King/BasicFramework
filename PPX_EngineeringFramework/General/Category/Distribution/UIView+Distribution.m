//
//  UIView+Distribution.m
//  LessonUITableView
//
//  Created by lanouhn on 13-12-25.
//  Copyright (c) 2013年 lanouhn. All rights reserved.
//

#import "UIView+Distribution.h"

@implementation UIView (Distribution)

- (CGFloat)left
{
    return self.frame.origin.x;
}
- (CGFloat)right
{
    return self.frame.origin.x + [self fWidth];
}
- (CGFloat)top
{
    return self.frame.origin.y;
}
- (CGFloat)bottom
{
    return self.frame.origin.y + [self fHeight];
}

- (CGFloat)fWidth
{
    return self.bounds.size.width;
}

- (CGFloat)fHeight
{
    return self.bounds.size.height;
}

@end
