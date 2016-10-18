//
//  IFDemo.m
//  IFSoapNetworkManager
//
//  Created by SaiDicaprio on 16/9/26.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import "IFDemo.h"
#import "PrivateParam.h"
#import "LoginRequest.h"
#import "RegisterParam.h"
#import "NetWorkManager.h"
#import <MJExtension/MJExtension.h>
#import "NSString+MD5.h"


@interface IFDemo ()
@property (nonatomic, strong) NetWorkManager *manager;
@property (nonatomic, strong) UserModel *userModel;
@end

@implementation IFDemo

#pragma mark - Lazy
- (NetWorkManager *)manager{
    if (!_manager) {
        _manager = [NetWorkManager sharedManager];
    }
    return _manager;
}

#pragma mark - Requests
- (void)request{
    BaseParam *Param = [BaseParam param];
    NSMutableDictionary *params = Param.mj_keyValues;
    [params setObject:@"201609000" forKey:@"Edition"];
    [self.manager POST:@"QdData" parameters:params success:^(id responseObject) {
        NSLog(@"responseObject...");
    } failure:^(NSError *error) {
        NSLog(@"failure:\n %@", error);
    }];
}

- (void)reg{
    RegisterParam *Param = [RegisterParam param];
    Param.phone = @"13967173625";
    Param.code = @"749216";
    Param.pwd = @"123456".md5;
    NSMutableDictionary *params = Param.mj_keyValues;
    [self.manager POST:@"AddMember" parameters:params success:^(SoapResult *Result) {
        switch (Result.Status) {
            case 200:
                self.userModel = [UserModel mj_objectWithKeyValues:Result.Data];
                self.userModel.private = Result.Msg;
                
                break;
            default:
                break;
        }
    } failure:^(NSError *error) {
        
    }];
}

- (void)verifyCode{
    BaseParam *Param = [BaseParam param];
    NSMutableDictionary *params = Param.mj_keyValues;
    [params setObject:@"13967173625" forKey:@"phone"];
    [params setObject:@"验证" forKey:@"operate"];
    [params setObject:@"上海" forKey:@"City"];
    [self.manager POST:@"SendIdentityCode" parameters:params success:^(id responseObject) {
        NSLog(@"responseObject...");
    } failure:^(NSError *error) {
        NSLog(@"failure:\n %@", error);
    }];
}

- (void)login{
    LoginParam *Param = [LoginParam param];
    Param.City = @"上海";
    Param.userName = @"15600903760";// @"test05";  //@"15618312806";  //
    Param.passWord = @"onspeed";  // @"123456";   //@"123456";      //
    NSDictionary *params = Param.mj_keyValues;
    
    [self.manager POST:@"Login" parameters:params success:^(SoapResult *Result) {
        switch (Result.Status) {
            case 200:
                self.userModel = [UserModel mj_objectWithKeyValues:Result.Data];
                self.userModel.private = Result.Msg;
                break;
            default:
                break;
        }
    } failure:^(NSError *error) {
        
    }];
}

- (void)homeModuleList{
    PrivateParam *Param = [PrivateParam param];
    Param.City = @"上海";
    NSDictionary *params = Param.mj_keyValues;
    [self.manager POST:@"NewGetHomePageModuleList" parameters:params success:^(SoapResult *Result) {
        switch (Result.Status) {
                
            case 200:
                break;
            default:
                break;
        }
    } failure:^(NSError *error) {
        
    }];
}

- (void)demo{
    [self homeModuleList];
}

@end
