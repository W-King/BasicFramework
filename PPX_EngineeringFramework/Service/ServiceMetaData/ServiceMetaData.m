//
//  ServiceMetaData.m
//  BigSport
//
//  Created by 刘凡 on 16/8/2.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "ServiceMetaData.h"
#import "RequestInfoModel.h"

static NSArray *metaData;
@implementation ServiceMetaData

+ (void)configMetaData
{                 //用户登录接口
    metaData = @[[RequestInfoModel initName:@"signLogin"
                                           path:@"userController"
                                     returnType:@"LoginModel"],
                     //用户退出接口
                     [RequestInfoModel initName:@"loginOut"
                                           path:@"userController"
                                     returnType:@"ResultModel"],
                     //短信发送接口
                     [RequestInfoModel initName:@"sendSms"
                                           path:@"userController"
                                     returnType:@"ResultModel"],
                     //社交类app登录2
                     [RequestInfoModel initName:@"socialLogin2"
                                           path:@"userController"
                                     returnType:@"LoginModel"],
                     //用户信息接口
                     [RequestInfoModel initName:@"userInfo"
                                           path:@"userController"
                                     returnType:@"MyInfoResultModel"],
                     //用户重置密码
                     [RequestInfoModel initName:@"resetPwd"
                                           path:@"userController"
                                     returnType:@"LoginModel"],
                     //用户信息更新
                     [RequestInfoModel initName:@"updateUserInfo"
                                           path:@"userController"
                                     returnType:@"ResultModel"],
                     //设置用户喜欢
                     [RequestInfoModel initName:@"setUserFavor"
                                           path:@"userController"
                                     returnType:@"ResultModel"],
                     //用户注册接口
                     [RequestInfoModel initName:@"userRegSign"
                                           path:@"userController"
                                     returnType:@"LoginModel"],
                     //启动页接口
                     [RequestInfoModel initName:@"startPage"
                                           path:@"userController"
                                     returnType:@"ResultModel"],
                     //app版本升级提示接口
                     [RequestInfoModel initName:@"versionInfo"
                                           path:@"userController"
                                     returnType:@"UpdateVersionModel"],
                     //内容逻辑删除
                     [RequestInfoModel initName:@"delContent"
                                           path:@"contentController"
                                     returnType:@"ResultModel"],
                     //运动时刻接口
                     [RequestInfoModel initName:@"sportingMoments"
                                           path:@"contentController"
                                     returnType:@"SportMomentResultModel"],
                     //各种运动类型接口
                     [RequestInfoModel initName:@"sportCategory"
                                           path:@"contentController"
                                     returnType:@"SportCategoryResultModel"],
                     //发布运动时刻接口
                     [RequestInfoModel initName:@"publishSportingMoment"
                                           path:@"contentController"
                                     returnType:@"ResultModel"],
                     //发布图集
                     [RequestInfoModel initName:@"publicContentPhotos"
                                           path:@"contentController"
                                     returnType:@"ResultModel"],
                     //图集详情
                     [RequestInfoModel initName:@"contentPhotosDetail"
                                           path:@"contentController"
                                     returnType:@"ContentPhotosDetailResult"],
                     //内容投诉
                     [RequestInfoModel initName:@"contentComplain"
                                           path:@"contentController"
                                     returnType:@"ResultModel"],
                     //各种评论数
                     [RequestInfoModel initName:@"remarkCount"
                                           path:@"remarkController"
                                     returnType:@"CommentCountResultModel"],
                     //发布评论
                     [RequestInfoModel initName:@"publicRemark"
                                           path:@"remarkController"
                                     returnType:@"ResultModel"],
                     //评论信息列表
                     [RequestInfoModel initName:@"remarkList"
                                           path:@"remarkController"
                                     returnType:@"ContentRemarkResults"],
                     //点赞接口
                     [RequestInfoModel initName:@"supportPraise"
                                           path:@"contentController"
                                     returnType:@"ResultModel"],
                     //用户消息提醒数量
                     [RequestInfoModel initName:@"userMsgNumInfo"
                                           path:@"userMsgController"
                                     returnType:@"MsgNumListResult"],
                     //消息通知列表
                     [RequestInfoModel initName:@"msgNoticeList"
                                           path:@"userMsgController"
                                     returnType:@"MsgNoticeListResult"],
                     //关注它人
                     [RequestInfoModel initName:@"userAttention"
                                           path:@"userController"
                                     returnType:@"ResultModel"],
                     //关注列表
                     [RequestInfoModel initName:@"attendList"
                                           path:@"userController"
                                     returnType:@"AttendListResultModel"],
                     //用户喜欢的内容列表
                     [RequestInfoModel initName:@"favorContentList"
                                           path:@"userController"
                                     returnType:@"FavorContentListResultModel"],
                     //粉丝列表
                     [RequestInfoModel initName:@"fansList"
                                           path:@"userController"
                                     returnType:@"FansListResultModel"],
                     //分享内容
                     [RequestInfoModel initName:@"shareContent"
                                           path:@"userController"
                                     returnType:@"ShareContentResultModel"],
                     //昵称校验
                     [RequestInfoModel initName:@"verifyNickName"
                                           path:@"userController"
                                     returnType:@"ResultModel"],
                     //更新消息状态
                     [RequestInfoModel initName:@"updateMsgStatus"
                                           path:@"userMsgController"
                                     returnType:@"ResultModel"],
                     //初始化用户能量
                     [RequestInfoModel initName:@"initUserPower"
                                           path:@"userPowerController"
                                     returnType:@"ResultModel"],
                     //消息中心评论列表
                     [RequestInfoModel initName:@"msgRemarkList"
                                           path:@"userMsgController"
                                     returnType:@"ContentRemarkResults"],
                     //意见反馈
                     [RequestInfoModel initName:@"msgAdvice"
                                           path:@"userMsgController"
                                     returnType:@"ResultModel"],
                     //运动标签获取接口
                     [RequestInfoModel initName:@"recommLabelList"
                                           path:@"contentController"
                                     returnType:@"ForLabelsResultModel"],
                     //消息关注列表
                     [RequestInfoModel initName:@"msgAttendList"
                                           path:@"userMsgController"
                                     returnType:@"MsgAttendListResultModel"],
                     //消息点赞列表
                     [RequestInfoModel initName:@"msgPraiseList"
                                           path:@"userMsgController"
                                     returnType:@"MsgPraiseListResult"],
                     //达人信息分享
                     [RequestInfoModel initName:@"userPowerShare"
                                           path:@"userPowerController"
                                     returnType:@"UserPowerShareModel"],
                     //热门问题
                     [RequestInfoModel initName:@"hotQuestions"
                                           path:@"answerController"
                                     returnType:@"ApiHotQuestionsResult"],
                     //最新问题
                     [RequestInfoModel initName:@"newQuestions"
                                           path:@"answerController"
                                     returnType:@"ApiNewQuestionsResult"],
                     //个人中心我听
                     [RequestInfoModel initName:@"myListens"
                                           path:@"answerController"
                                     returnType:@"MyListenModel"],
                     //回答问题
                     [RequestInfoModel initName:@"answerQuestion"
                                       path:@"answerController"
                                 returnType:@"AskMeModel"],
                     //个人中心答
                    [RequestInfoModel initName:@"myAnswers"
                                       path:@"answerController"
                                 returnType:@"MyListenModel"],
                    //全部用户信息
                     [RequestInfoModel initName:@"allUserInfo"
                                           path:@"userController"
                                     returnType:@"ApiUserInfoAllResult"],
                     //微信移动支付
                     [RequestInfoModel initName:@"wechatMobilePay"
                                           path:@"payController"
                                     returnType:@"WechatMobilePayResult"],
                     //个人中心我问
                     [RequestInfoModel initName:@"myQuestions"
                                           path:@"answerController"
                                     returnType:@"MyListenModel"],
                     //才华排行
                     [RequestInfoModel initName:@"richAnswers"
                                           path:@"answerController"
                                     returnType:@"ApiRichAnswersResult"],
                     //app个人主页信息
                     [RequestInfoModel initName:@"appPersonHome"
                                           path:@"answerController"
                                     returnType:@"MyCenterModel"],
                     //问题详情
                     [RequestInfoModel initName:@"questionDetail"
                                           path:@"answerController"
                                     returnType:@"DetailsProbleModel"],
                     //提问
                     [RequestInfoModel initName:@"saveQuestion"
                                           path:@"answerController"
                                     returnType:@"AudioModel"],
                     //提问时微信消息
                    [RequestInfoModel initName:@"sendAskWxMsg"
                                       path:@"answerController"
                                 returnType:@"ResultModel"],
                     //更新问答用户信息app
                     [RequestInfoModel initName:@"updateUserInfoApp"
                                           path:@"answerController"
                                     returnType:@"ApiAppUpdateAnswerUserResultModel"],
                     //更新用户头衔
                     [RequestInfoModel initName:@"updateUserTile"
                                           path:@"answerController"
                                     returnType:@"ResultModel"],
                     //达人推荐
                 //V1.1.0 发现页取消 LF
//                     [RequestInfoModel initName:@"recommendExpert"
//                                           path:@"userController"
//                                     returnType:@"ApiRecommendExpertResult"],
                     //我发布的运动时刻
                     [RequestInfoModel initName:@"ownSportMoment"
                                           path:@"userController"
                                     returnType:@"MyReleaseSportingMomentsModel"],
                     //问达点赞
                     [RequestInfoModel initName:@"questionPraise"
                                           path:@"answerController"
                                     returnType:@"ApiQuestionPraiseInputModel"],
                     //最新消息列表
                     [RequestInfoModel initName:@"recentMsgList"
                                           path:@"userMsgController"
                                     returnType:@"MianMessageModel"],
                     //问答消息列表
                     [RequestInfoModel initName:@"answerMsgList"
                                           path:@"userMsgController"
                                     returnType:@"MsgNoticeListResult"],
                     //语音播放
                     [RequestInfoModel initName:@"playAudio"
                                           path:@"answerController"
                                     returnType:@"PlayModel"],
                     //绑定结算账户
                     [RequestInfoModel initName:@"bindSettleAccount"
                                           path:@"answerController"
                                     returnType:@"ResultModel"],
                    //翘丽圈活动信息
                     [RequestInfoModel initName:@"buttockInfo"
                                           path:@"buttock"
                                     returnType:@"SecondAcitvityModel"],
                    //金币账户信息
                    [RequestInfoModel initName:@"coinAccInfo"
                                          path:@"payController"
                                    returnType:@"CoinAccInfoModel"],
                    //金币充值
                    [RequestInfoModel initName:@"coinCharge"
                                          path:@"payController"
                                    returnType:@"MyJellyModel"],
                    //金币支付
                    [RequestInfoModel initName:@"coinPay"
                                          path:@"payController"
                                    returnType:@"ResultModel"],
                 
                   //不再关注
                   [RequestInfoModel initName:@"msgFocus"
                                       path:@"userMsgController"
                                 returnType:@"ResultModel"],
                    //问答订单接口
                    [RequestInfoModel initName:@"answerOrder"
                                          path:@"orderController"
                                    returnType:@"AnswerOrderResultModel"],
                 
                 //运动小知识
                 [RequestInfoModel initName:@"sportChickenSoup"
                                       path:@"contentController"
                                 returnType:@"SportChickenSoupModel"],
                 
                 //金币流水信息
                 [RequestInfoModel initName:@"coinFlowInfo"
                                       path:@"payController"
                                 returnType:@"JellySubsidiaryModel"],
                 
                 //标签关联内容列表
                 [RequestInfoModel initName:@"lableRelList"
                                       path:@"contentController"
                                 returnType:@"ApiLabelRelListResultModel"],

                 //统一分享信息接口
                 [RequestInfoModel initName:@"shareInfo"
                                       path:@"contentController"
                                 returnType:@"ShareInfoModel"],
                 
                 //统一分享信息接口
                 [RequestInfoModel initName:@"contentReadCount"
                                       path:@"contentController"
                                 returnType:@"ApiAppUpdateAnswerUserResultModel"],
                 
                 //统一分享信息接口
                 [RequestInfoModel initName:@"answerQuestionDetail"
                                       path:@"answerController"
                                 returnType:@"AnswerQuestionDetailModel"],
                 
                 //搜索标签接口
                 [RequestInfoModel initName:@"searchLabels"
                                       path:@"contentController"
                                 returnType:@"SearchSportLabelResultModel"],
                 
                 //添加标签接口
                 [RequestInfoModel initName:@"userCreateLabel"
                                       path:@"contentController"
                                 returnType:@"CreateLabelResultModel"],
                 
                 //app新首页接口
                 [RequestInfoModel initName:@"homePageSecond"
                                       path:@"homeController"
                                 returnType:@"HomePageMainModel"],];
}

+(NSArray *)serviceData
{
    [self configMetaData];
    return metaData;
}

@end
