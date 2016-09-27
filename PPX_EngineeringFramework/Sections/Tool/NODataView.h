//
//  NODataView.h
//  TinyStore
//
//  Created by 刘凡 on 15/6/6.
//  Copyright (c) 2015年 齐志坚. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,NODataViewType)
{
    NODataViewType_NOData = 0,
    NODataViewType_NONetwork = 1,
};

@interface NODataView : UIView
- (id)initWithFrame:(CGRect)frame type:(NODataViewType)type;
- (void)setNoDataLabelText:(NSString *)str;
- (void)setNoDataImageName:(NSString *)imageName;
- (void)reloadFrame:(CGRect)frame type:(NODataViewType)type;
@end
