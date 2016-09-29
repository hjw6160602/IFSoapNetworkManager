//
//  NetWorkTool.h
//  贝思客
//
//  Created by SaiDicaprio on 16/9/26.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>
@class SoapResult;

@interface NetWorkManager : AFHTTPSessionManager

+ (instancetype)sharedManager;

- (void)POST:(NSString *)methodName parameters:(NSDictionary *)param success:(void (^)(SoapResult *responseResult))success failure:(void(^)(NSError *error))failure;

@end
