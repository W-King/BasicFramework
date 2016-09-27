//
//  RequestURLMarco.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/22.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#ifndef RequestURLMarco_h
#define RequestURLMarco_h

/*
 *   1 生产环境  发布版本使用
 *   2 测试环境  测试版本使用
 *   3 开发环境  开发时使用
 */
#define PRODUCT_APP_STATUS 2

#if PRODUCT_APP_STATUS ==1

//App 生产状态 线上环境
#define kWebAPIDefine           @"http://api-001.sport.bigtiyu.com/api"
#define kWebURLDefine           @"http://api-001.sport.bigtiyu.com"
#define kStaticWebURLDefine     @"http://api-001.sport.bigtiyu.com/webjars/sportstatic"

#define XTY_IAP_VerifyReceipt   @"https://buy.itunes.apple.com/verifyReceipt"
#define XYT_WX_WEBKEY           @"wxfd44c999a0475e56"

#elif PRODUCT_APP_STATUS ==2


//App 测试状态 测试环境
#define kWebAPIDefine           @"http://beta-sportcloud.ntw.srnpr.com/api"
#define kWebURLDefine           @"http://beta-sportcloud.ntw.srnpr.com"
#define kStaticWebURLDefine     @"http://beta-sportcloud.ntw.srnpr.com/webjars/sportstatic"

#define XTY_IAP_VerifyReceipt   @"https://sandbox.itunes.apple.com/verifyReceipt"
#define XYT_WX_WEBKEY           @"wxec842da73ebe11a4"

#elif PRODUCT_APP_STATUS ==3



#endif

#endif /* RequestURLMarco_h */
