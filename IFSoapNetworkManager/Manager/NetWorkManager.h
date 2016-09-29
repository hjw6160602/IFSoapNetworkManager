//
//  NetWorkTool.h
//  贝思客
//
//  Created by liuwy on 16/9/26.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface NetWorkManager : AFHTTPSessionManager

+ (instancetype)sharedManager;

- (void)POST:(NSString *)methodName parameters:(NSDictionary *)param success:(void (^)(id responseObject))success failure:(void(^)(NSError *error))failure;

@end
