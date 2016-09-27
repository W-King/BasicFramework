//
//  BaseWebViewController.m
//  BigSport
//
//  Created by 刘凡 on 16/6/14.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "BaseWebViewController.h"

@implementation BaseWebViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initBaseWebUI];
}

#pragma mark - Init UI -
- (void)modifyCustomNav
{
    [self.customNav setNavTitle:self.titleStr?self.titleStr:@""];
}

- (void)creatMainWebView
{
    mianWebView = [[UIWebView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64)];
    mianWebView.scalesPageToFit = YES;
    mianWebView.delegate = self;
    mianWebView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:mianWebView];
}

- (void)initBaseWebUI
{
    [self modifyCustomNav];
    [self creatMainWebView];
}


#pragma mark - Request
- (void)startWebViewRequest
{
    if (self.urlStr.length > 0)
    {
        NSURL *url = [NSURL URLWithString:self.urlStr];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [mianWebView loadRequest:request];
    }
}

@end
