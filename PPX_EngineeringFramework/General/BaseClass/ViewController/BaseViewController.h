//
//  BaseViewController.h
//  BigSport
//
//  Created by 刘凡 on 16/4/1.
//  Copyright © 2016年 iCHSY. All rights reserved.
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
