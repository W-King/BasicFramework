//
//  BaseViewController.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomNavView.h"
#import "NODataView.h"
typedef NS_ENUM(NSInteger,BaseViewControllerShowType)
{
    BaseViewControllerShowType_Push = 0,
    BaseViewControllerShowType_Present,
};

@interface BaseViewController : UIViewController
@property (nonatomic,strong) NODataView *noDataView;
@property (nonatomic,strong) CustomNavView *customNav;
@property (nonatomic) BaseViewControllerShowType baseViewControllerShowType;
@end
