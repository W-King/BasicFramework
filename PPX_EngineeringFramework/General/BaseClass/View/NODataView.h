//
//  NODataView.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
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
