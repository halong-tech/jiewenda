//
//  HttpTool.m
//  OCR
//
//  Created by 谭宗坚 on 15/7/9.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "HttpTool.h"
#import "AFNetworking.h"
#define ContentType @"text/html"
#import "MD5.h"
#import "UrlStringAction.h"
@implementation HttpTool


//登录test
+ (void)loginTest:(NSString *)idString success:(void(^)(id response))success failure:(void (^)(NSError *))failure{

    
    NSDictionary * params = @{@"id":idString};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:loginUrlText params:params success:success failure:failure];
    
    

}



+ (void)requestWithMethod:(RequestMethodType)methodType url:(NSString *)url
                   params:(NSDictionary *)params
                  success:(void (^)(id response))success
                  failure:(void(^)(NSError *))failure{
    
    AFHTTPRequestOperationManager * manage = [[AFHTTPRequestOperationManager alloc]init];
    
    manage.responseSerializer.acceptableContentTypes = [NSSet setWithObject:ContentType];
    manage.requestSerializer.HTTPShouldHandleCookies = YES;
    
    switch (methodType) {
        case RequestMethodTypeGet:{
            
            [manage GET:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
                if (success) {
                    success(responseObject);
                }
                
            } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                if (failure) {
                    failure(error);
                }
                
            }];
            
        }
            
            break;
        case RequestMethodTypePost:{
            
            [manage POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
                if (success) {
                    success(responseObject);
                }
                
            } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                if (failure) {
                    failure(error);
                }
                
            }];
            
            
            
        }
            break;
            
        default:
            break;
    }
    
    
}


#define mark --------- 个人中心

//登录
+ (void)login:(NSString *)phone password:(NSString *)password success:(void (^)(id response))success failure:(void(^)(NSError *))failure{
    
    NSString * passwordWithMd5 = [MD5 md5:password];
    NSDictionary * params = @{@"phone":phone, @"password":passwordWithMd5};
    [HttpTool requestWithMethod:RequestMethodTypePost url:loginUrlText params:params success:success failure:failure];
    
}

//注册
+ (void)signIn:(NSString *)phone isTeacher:(NSString *)isTeacher QQNumber:(NSString *)QQNumber weChatNumber:(NSString *)weChatNumber school:(NSString *)school grade:(NSString *)grade password:(NSString *)password imageFeildData:(NSData *)imageFeildData success:(void (^) (id response))success failure:(void (^)(NSError * error))failure{

    

    NSDictionary * params = @{@"phone":phone,@"isTeacher":isTeacher,@"QQ":QQNumber,@"wechat":weChatNumber,@"school":school,@"grade":grade,@"password":password,@"ImageFeild":imageFeildData};

    [HttpTool requestWithMethod:RequestMethodTypePost url:signInUrl params:params success:success failure:failure];


}

//获取个人信息
+ (void)getUserInfo:(NSString *)userKey success:(void (^) (id response))success failure:(void (^) (NSError *))failure{
    NSDictionary * params = @{@"userkey":userKey};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:getUserInfoUrl params:params success:success failure:failure];
    
}

//修改资料
+ (void)modifiedData:(NSString *)userKey phoneNumber:(NSString *)               phoneNumber QQNumber:(NSString *)QQNumber weChatNumber:(NSString *)weChatNumber school:(NSString *)school grade:(NSString *)grade nickName:(NSString *)nickName success:(void (^)(id response))success failure:(void (^)(NSError * error))failure{

    NSDictionary * params = @{@"userkey":userKey,@"phone":phoneNumber,@"QQ":QQNumber,@"wechat":weChatNumber,@"school":school,@"grade":grade,@"nickname":nickName};
    [HttpTool requestWithMethod:RequestMethodTypePost url:modifiedDataUrl params:params success:success failure:failure];

}

//头像修改
+ (void)modifiedPicture:(NSString *)userKey imageFileData:(NSData *)imageFileData success:(void(^)(id response))success failure:(void (^)(NSError *))failure{

    NSDictionary * params = @{@"userkey":userKey,@"ImageFeild":imageFileData};
    [HttpTool requestWithMethod:RequestMethodTypePost url:modifiedPictureUrl params:params success:success failure:failure];

}

//修改密码
+ (void)modifiedPassword:(NSString *)newPassword oldPassword:(NSString *)oldPassword success:(void(^)(id response))success failure:(void(^)(NSError *))failure{

    NSDictionary * params = @{@"newPassword":newPassword,@"oldPassword":oldPassword};

    [HttpTool requestWithMethod:RequestMethodTypePost url:modifiedPasswordUrl params:params success:success failure:failure];
    
}

//消息设置
+ (void)messageSetting:(NSString *)userKey messageState:(NSString *)messageState success:(void (^)(id response))success failure:(void (^)(NSError *))failure{

    NSDictionary * params = @{@"userkey":userKey,@"messageState":messageState};
    [HttpTool requestWithMethod:RequestMethodTypePost url:messageSettingUrl params:params success:success failure:failure];

}

//版本更新
+ (void)versionUpdate:(NSString *)versionNow success:(void (^)(id response))success failure:(void (^)(NSError *))failure{

    NSDictionary * params = @{@"versionNow":versionNow};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:versionUpdateUrl params:params success:success failure:failure];
    
}

//退出
+ (void)exit:(NSString *)userKey success:(void (^)(id response))success failure:(void (^)(NSError *))failure{
    
    NSDictionary * params = @{@"userkey":userKey};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:exitUrl params:params success:success failure:failure];

}





#define mark --------- 功能操作

//搜索题目
+ (void)searchTopic:(NSString * )userKey content:(NSString *)content searchImageData:(NSData *)searchImageData success:(void(^)(id response))success failure:(void (^)(NSError *))failure{
    
    NSDictionary * params = @{@"userkey":userKey,@"content":content,@"searchImage":searchImageData};
    [HttpTool requestWithMethod:RequestMethodTypePost url:searchTopicUrl params:params success:success failure:failure];

}

//题目详情
+ (void)topicDetail:(NSString *)userKey problemId:(NSString *)problemId success:(void (^)(id response))success failure:(void (^)(NSError *))failure{

    NSDictionary * params = @{@"userkey":userKey,@"problemId":problemId};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:topicDetailUrl params:params success:success failure:failure];



}

//获取相关解答
+ (void)getRelatedAnser:(NSString *)problemId subject:(NSString *)subject success:(void (^)(id response))success failure:(void(^)(NSError *))failure{
    
    NSDictionary * params = @{@"problemId":problemId,@"subject":subject};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:getRelatedAnserUrl params:params success:success failure:failure];
    
}


//获取题目评论
+ (void)getSubjectComment:(NSString *)problemId success:(void (^)(id response))success failure:(void(^)(NSError *))failure{

    NSDictionary * params = @{@"problemId":problemId};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:getSubjectCommentUrl params:params success:success failure:failure];


}



//提问问题
+ (void)askQuestions:(NSString *)studentId content:(NSString *)content searchImageUrl:(NSString *)searchImageUrl time:(NSString *)time appointToTeacher:(NSString *)appointToTeacher searchImageData:(NSData *)searchImageData speechData:(NSData *)speechData success:(void (^)(id response))success failure:(void (^)(NSError *))failure{


    NSDictionary * params = @{@"studentId":studentId,@"content":content,@"searchUrl":searchImageUrl,@"time":time,@"AppointTo":appointToTeacher,@"searchImage":searchImageData,@"speechData":speechData};
    
    [HttpTool requestWithMethod:RequestMethodTypeGet url:askQuestionsUrl params:params success:success failure:failure];
    

}

//获取问题
+ (void)getQuestions:(NSString *)askId userKey:(NSString *)userKey success:(void (^)(id response))success failure:(void (^)(NSError *))failure{


    NSDictionary * params = @{@"askId":askId,@"userkey":userKey};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:getQuestionsUrl params:params success:success failure:failure];

}

//回答问题
+ (void)answerQuestions:(NSString *)askId teacherName:(NSString *)teacherName time:(NSString *)time addImagesData:(NSData *)addImagesData addViderUrl:(NSString *)addViderUrl speechData:(NSData *)speechData success:(void (^)(id response))success failure:(void (^)(NSError *))failure{

    NSDictionary * params = @{@"askId":askId,@"techerName":teacherName,@"time":time,@"AddImages":addImagesData,@"speechData":speechData,@"addViderUrl":addViderUrl,@"speechData":speechData};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:answerQuestionsUrl params:params success:success failure:failure];

}



//提交问题上传图片
+ (void)submitQuestionsToUploadPictures:(NSString *)problemId imageFeilData:(NSData *)imageFeileData success:(void(^)(id response))success failure:(void (^)(NSError *))failure{

    NSDictionary * params = @{@"problemId":problemId,@"ImageFeil":imageFeileData};
    [HttpTool requestWithMethod:RequestMethodTypePost url:submitQuestionsToUploadPicturesUrl params:params success:success failure:failure];


}

//评论题目
+ (void)commentTopic:(NSString *)userKey problemId:(NSString *)problemId content:(NSString *)content success:(void (^)(id response))success failure:(void(^)(NSError *))failure{

    NSDictionary * params = @{@"userkey":userKey,@"problemId":problemId,@"content":content};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:commentTopicUrl params:params success:success failure:failure];

}


//关注老师
+ (void)attentionTeacher:(NSString *)userkey teacherId:(NSString *)teacherId success:(void (^)(id response))success failure:(void (^)(NSError *))failure{
    
    NSDictionary * params = @{@"userkey":userkey,@"teacherId":teacherId};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:attentionTeacherUrl params:params success:success failure:failure];

}

//点赞
+ (void)praise:(NSString *)userKey problemId:(NSString *)problemId success:(void(^)(id response))success failure:(void (^)(NSError *))failure{

    NSDictionary * params = @{@"userkey":userKey,@"problemId":problemId};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:praiseUrl params:params success:success failure:failure];

}

//收藏
+ (void)collection:(NSString *)userKey problemId:(NSString *)problemId success:(void (^)(id response))success failure:(void (^)(NSError *))failure{


    NSDictionary * params = @{@"userkey":userKey,@"problemId":problemId};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:collectionUrl params:params success:success failure:failure];


}

//搜索老师
+ (void)searchTeacher:(NSString *)userKey subject:(NSString *)subject success:(void (^)(id response))success failure:(void (^)(NSError *))failure{
    
    NSDictionary * params = @{@"userkey":userKey,@"subject":subject};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:searchTeacherUrl params:params success:success failure:failure];


}


#define mark --------- 个人资料信息

//获取我的题目列表
+ (void)getMyTopicList:(NSString *)userKey success:(void (^)(id response)) success failure:(void (^)(NSError *))failure{

    NSDictionary * params = @{@"userkey":userKey};
    [HttpTool requestWithMethod:RequestMethodTypePost url:getMyTopicListUrl params:params success:success failure:failure];

}


//获取收藏的题目列表
+ (void)getMyCollectTopicList:(NSString *)userKey success:(void (^)(id response))success failure:(void (^)(NSError *))failure{

    NSDictionary * params = @{@"userkey":userKey};
    [HttpTool requestWithMethod:RequestMethodTypePost url:getMyCollectTopicListUrl params:params success:success failure:failure];


}

//公共的题目
+ (void)getPublicTopicList:(NSString *)userKey success:(void (^)(id response))success failure:(void (^)(NSError *))failure{

    NSDictionary * params = @{@"userkey":userKey};
    [HttpTool requestWithMethod:RequestMethodTypePost url:getPublicTopicListUrl params:params success:success failure:failure];


}


//搜索老师
+ (void)serachTeacherList:(NSString *)userKey subject:(NSString *)subject grade:(NSString *)grade success:(void (^)(id response))success failure:(void (^)(NSError *))failure{


    NSDictionary * params = @{@"userkey":userKey,@"subject":subject,@"grade":grade};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:serachTeacherListUrl params:params success:success failure:failure];

}


//获取老师信息
+ (void)getTeacherInfo:(NSString *)techerId success:(void (^)(id response))success failure:(void (^)(NSError *))failure{

    NSDictionary * params = @{@"techerId":techerId};
    [HttpTool requestWithMethod:RequestMethodTypeGet url:getTeacherInfoUrl params:params success:success failure:failure];
    
    NSLog(@"GIT");

}


@end
