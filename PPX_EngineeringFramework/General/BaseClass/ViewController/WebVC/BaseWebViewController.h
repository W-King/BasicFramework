//
//  BaseWebViewController.h
//  BigSport
//
//  Created by 刘凡 on 16/6/14.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseWebViewController : BaseViewController <UIWebViewDelegate>
{
    UIWebView *mianWebView;
}
@property (nonatomic,copy) NSString *titleStr;
@property (nonatomic,copy) NSString *urlStr;

- (void)startWebViewRequest;
@end
