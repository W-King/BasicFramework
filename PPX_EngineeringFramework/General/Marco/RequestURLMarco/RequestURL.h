//
//  RequestURL.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/22.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#ifndef RequestURL_h
#define RequestURL_h

/*
 *   1 生产环境  发布版本使用
 *   2 测试环境  测试版本使用
 *   3 开发环境  开发时使用
 */
#define PRODUCT_APP_STATUS 2

#if PRODUCT_APP_STATUS ==1

//App 生产状态 线上环境
#define kWebAPIDefine           @"http://xxx"
#define kWebURLDefine           @"http://xxx"
#define kStaticWebURLDefine     @"http://xxx"

#define XTY_IAP_VerifyReceipt   @"https://xxx"
#define XYT_WX_WEBKEY           @"xxx"

#elif PRODUCT_APP_STATUS ==2


//App 测试状态 测试环境
#define kWebAPIDefine           @"http://xxx"
#define kWebURLDefine           @"http://xxx"
#define kStaticWebURLDefine     @"http://xxx"

#define XTY_IAP_VerifyReceipt   @"https://xxx"
#define XYT_WX_WEBKEY           @"xxx"

#elif PRODUCT_APP_STATUS ==3



#endif

#endif /* RequestURL_h */
