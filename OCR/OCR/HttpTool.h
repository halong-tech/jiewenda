//
//  HttpTool.h
//  OCR
//
//  Created by 谭宗坚 on 15/7/9.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpTool : NSObject

typedef NS_ENUM(NSInteger, RequestMethodType){
    
    RequestMethodTypePost = 1,
    RequestMethodTypeGet = 2
    
};

/**
 *  发送一个请求
 *
 *  @param methodType   请求方法
 *  @param url          请求路径
 *  @param params       请求参数
 *  @param success      请求成功后的回调（请将请求成功后想做的事情写到这个block中）
 *  @param failure      请求失败后的回调（请将请求失败后想做的事情写到这个block中）
 */



+ (void)requestWithMethod:(RequestMethodType)
methodType url:(NSString *)url
                   params:(NSDictionary *)params
                  success:(void (^)(id response))success
                  failure:(void(^)(NSError *))failure;


#define mark --------- 个人中心


//登录test
+ (void)loginTest:(NSString *)idString success:(void(^)(id response))success failure:(void (^)(NSError *))failure;



//登录
+ (void)login:(NSString *)phone password:(NSString *)password success:(void (^)(id response))success failure:(void(^)(NSError *))failure;


//注册
+ (void)signIn:(NSString *)phone isTeacher:(NSString *)isTeacher QQNumber:(NSString *)QQNumber weChatNumber:(NSString *)weChatNumber school:(NSString *)school grade:(NSString *)grade password:(NSString *)password imageFeildData:(NSData *)imageFeildData success:(void (^) (id response))success failure:(void (^)(NSError * error))failure;


//获取个人信息
+ (void)getUserInfo:(NSString *)userKey success:(void (^) (id response))success failure:(void (^) (NSError *))failure;



//修改资料
+ (void)modifiedData:(NSString *)userKey phoneNumber:(NSString *)phoneNumber QQNumber:(NSString *)QQNumber weChatNumber:(NSString *)weChatNumber school:(NSString *)school grade:(NSString *)grade nickName:(NSString *)nickName success:(void (^)(id response))success failure:(void (^)(NSError * error))failure;

//头像修改
+ (void)modifiedPicture:(NSString *)userKey imageFileData:(NSData *)imageFileData success:(void(^)(id response))success failure:(void (^)(NSError *))failure;

//修改密码
+ (void)modifiedPassword:(NSString *)newPassword oldPassword:(NSString *)oldPassword success:(void(^)(id response))success failure:(void(^)(NSError *))error;

//消息设置
+ (void)messageSetting:(NSString *)userKey messageState:(NSString *)messageState success:(void (^)(id response))success failure:(void (^)(NSError *))failure;

//版本更新
+ (void)versionUpdate:(NSString *)versionNow success:(void (^)(id response))success failure:(void (^)(NSError *))failure;

//退出
+ (void)exit:(NSString *)userkey success:(void (^)(id response))success failure:(void (^)(NSError *))failure;





#define mark --------- 功能操作

//搜索题目
+ (void)searchTopic:(NSString * )userKey content:(NSString *)content searchImageData:(NSData *)searchImageData success:(void(^)(id response))success failure:(void (^)(NSError *))failure;


//题目详情
+ (void)topicDetail:(NSString *)userKey problemId:(NSString *)problemId success:(void (^)(id response))success failure:(void (^)(NSError *))failure;

//获取相关解答
+ (void)getRelatedAnser:(NSString *)problemId subject:(NSString *)subject success:(void (^)(id response))success failure:(void(^)(NSError *))failure;

//获取题目评论
+ (void)getSubjectComment:(NSString *)problemId success:(void (^)(id response))success failure:(void(^)(NSError *))failure;

//提问问题
+ (void)askQuestions:(NSString *)studentId content:(NSString *)content searchImageUrl:(NSString *)searchImageUrl time:(NSString *)time appointToTeacher:(NSString *)appointToTeacher searchImageData:(NSData *)searchImageData speechData:(NSData *)speechData success:(void (^)(id response))success failure:(void (^)(NSError *))failure;


//获取问题
+ (void)getQuestions:(NSString *)askId userKey:(NSString *)userKey success:(void (^)(id response))success failure:(void (^)(NSError *))failure;


//回答问题
+ (void)answerQuestions:(NSString *)askId teacherName:(NSString *)teacherName time:(NSString *)time addImagesData:(NSData *)addImagesData addViderUrl:(NSString *)addViderUrl speechData:(NSData *)speechData success:(void (^)(id response))success failure:(void (^)(NSError *))failure;



//提交问题上传图片
+ (void)submitQuestionsToUploadPictures:(NSString *)problemId imageFeilData:(NSData *)imageFeileData success:(void(^)(id response))success failure:(void (^)(NSError *))failure;

//评论题目
+ (void)commentTopic:(NSString *)userKey problemId:(NSString *)problemId content:(NSString *)content success:(void (^)(id response))success failure:(void(^)(NSError *))failure;


//关注老师
+ (void)attentionTeacher:(NSString *)userkey teacherId:(NSString *)teacherId success:(void (^)(id response))success failure:(void (^)(NSError *))failure;


//点赞
+ (void)praise:(NSString *)userKey problemId:(NSString *)problemId success:(void(^)(id response))success failure:(void (^)(NSError *))failure;

+ (void)collection:(NSString *)userKey problemId:(NSString *)problemId success:(void (^)(id response))success failure:(void (^)(NSError *))failure;


//搜索老师
+ (void)searchTeacher:(NSString *)userKey subject:(NSString *)subject success:(void (^)(id response))success failure:(void (^)(NSError *))failure;


#define mark --------- 个人资料信息
//获取我的题目列表

+ (void)getMyTopicList:(NSString *)userKey success:(void (^)(id response)) success failure:(void (^)(NSError *))failure;

//获取收藏的题目列表
+ (void)getMyCollectTopicList:(NSString *)userKey success:(void (^)(id response))success failure:(void (^)(NSError *))failure;


//公共的题目
+ (void)getPublicTopicList:(NSString *)userKey success:(void (^)(id response))success failure:(void (^)(NSError *))failure;


//搜索老师
+ (void)serachTeacherList:(NSString *)userKey subject:(NSString *)subject grade:(NSString *)grade success:(void (^)(id response))success failure:(void (^)(NSError *))failure;


//获取老师信息
+ (void)getTeacherInfo:(NSString *)techerId success:(void (^)(id response))success failure:(void (^)(NSError *))failure;





@end
