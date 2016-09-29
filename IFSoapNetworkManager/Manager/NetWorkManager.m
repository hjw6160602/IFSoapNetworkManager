//
//  NetWorkTool.m
//  贝思客
//
//  Created by SaiDicaprio on 16/9/26.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import "SoapResult.h"
#import "NSString+MD5.h"
#import "NetWorkManager.h"
#import <MJExtension/MJExtension.h>

@interface NetWorkManager ()
@property (nonatomic, copy) NSString *privateKey;

@end

@implementation NetWorkManager

static NetWorkManager *_instance;

+ (id)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

+ (instancetype)sharedManager
{
    if (_instance == nil) {
        _instance = [NetWorkManager setupManager];
    }
    return _instance;
}

- (id)copyWithZone:(nullable NSZone *)zone{
    return _instance;
}

- (id)mutableCopyWithZone:(nullable NSZone *)zone{
    return _instance;
}

+ (NetWorkManager *)setupManager{
    NSURL *baseURL = [NSURL URLWithString:@"http://api.cs.bestcake.com/"];
    
    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
    
    NetWorkManager *manager = [[NetWorkManager alloc]initWithBaseURL:baseURL sessionConfiguration:config];
    manager.responseSerializer = [AFXMLParserResponseSerializer serializer];
    
    // 设置请求超时时间
    manager.requestSerializer.timeoutInterval = 30;
    
    // 返回NSData
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    // 设置请求头，也可以不设置
    [manager.requestSerializer setValue:@"text/xml; charset=utf-8" forHTTPHeaderField:@"Content-Type"];

    return manager;
}

- (void)POST:(NSString *)methodName parameters:(NSDictionary *)param success:(void (^)(SoapResult *responseObject))success failure:(void(^)(NSError *error))failure {
    
    //封装json
    NSMutableString *paramsString = [NSMutableString string];
    NSData *jsonData=[NSJSONSerialization dataWithJSONObject:param
                                                     options:NSJSONWritingPrettyPrinted
                                                       error:nil];
    paramsString = [[NSMutableString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    NSString *json = [paramsString stringByReplacingOccurrencesOfString: @"\n" withString:@""];
    NSString *uid = [param objectForKey:@"uid"];
    NSString *sign = [json stringByAppendingString:(uid.length > 0)? self.privateKey:@"12345678"].md5;
//    NSString *sign = @"30f5c2bd46627f4758f7fb72802bb5b5";
    
    NSString *soapMsg = [NSString stringWithFormat:
                         @"<?xml version=\"1.0\" encoding=\"utf-8\"?>"
                         "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" "
                         "xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">"
                         "<soap:Body>"
                         "<%@ xmlns=\"http://tempuri.org/\">"
                         "<json>%@</json>"
                         "<sign>%@</sign>"
                         "</%@>"
                         "</soap:Body>"
                         "</soap:Envelope>",methodName, json, sign, methodName];
    
    [self.requestSerializer setValue:[NSString stringWithFormat:@"%zd", soapMsg.length] forHTTPHeaderField:@"Content-Length"];
    NSString *page = @"Member";
    NSString *URL = [NSString stringWithFormat:@"%@.svc?wsdl", page];
    NSString *ActionTxt = [NSString stringWithFormat:@"http://tempuri.org/I%@/%@",page, methodName];
    
    // 添加请求SOAPAction
    [self.requestSerializer setValue:ActionTxt forHTTPHeaderField:@"SOAPAction"];
    
    // 设置HTTPBody
    [self.requestSerializer setQueryStringSerializationWithBlock:^NSString *(NSURLRequest *request, NSDictionary *parameters, NSError *__autoreleasing *error) {
        return soapMsg;
    }];
    
    [self POST:URL parameters:soapMsg progress:^(NSProgress * _Nonnull uploadProgress) {
        NSLog(@"请求中...");
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        // 把返回的二进制数据转为字符串
        NSString *result = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        
        // 利用正则表达式取出<return></return>之间的字符串
        NSString *regularExpression = [NSString stringWithFormat:@"(?<=%@Result>).*(?=</%@Result)",methodName, methodName];
        NSRegularExpression *regular = [[NSRegularExpression alloc] initWithPattern:regularExpression options:NSRegularExpressionCaseInsensitive error:nil];
        
        NSDictionary *dict = [NSDictionary dictionary];
        for (NSTextCheckingResult *checkingResult in [regular matchesInString:result options:0 range:NSMakeRange(0, result.length)]) {
            
            NSString *info = [result substringWithRange:checkingResult.range];
            NSLog(@"服务器返回json :\n %@", info);
            // 得到字典
            dict = [NSJSONSerialization JSONObjectWithData:[[result substringWithRange:checkingResult.range] dataUsingEncoding:NSUTF8StringEncoding] options:NSJSONReadingMutableLeaves error:nil];
        }
        
        // 请求成功并且结果有值把结果传出去
        if (success && dict) {
            SoapResult *Result = [SoapResult mj_objectWithKeyValues:dict];
            success(Result);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            NSData *data = [error.userInfo objectForKey:@"com.alamofire.serialization.response.error.data"];
            NSString *errorInfo = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            
            // 利用正则表达式取出<return></return>之间的字符串
            NSString *regularExpression = @"(?<=<faultstring xml:lang=\"zh-CN\">).*(?=</faultstring)";
            NSRegularExpression *regular = [[NSRegularExpression alloc] initWithPattern:regularExpression options:NSRegularExpressionCaseInsensitive error:nil];
            
            for (NSTextCheckingResult *checkingResult in [regular matchesInString:errorInfo options:0 range:NSMakeRange(0, errorInfo.length)]) {
                NSString *info = [errorInfo substringWithRange:checkingResult.range];
                NSLog(@"error:\n %@", info);
            }
            failure(error);
        }
    }];
}


@end
