//
//  IFDemo.m
//  IFSoapNetworkManager
//
//  Created by liuwy on 16/9/26.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import "IFDemo.h"
#import "LoginRequest.h"
#import "NetWorkManager.h"
#import <MJExtension/MJExtension.h>


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

- (void)demo{
    [self login];
}

#pragma mark - Requests
- (void)request{
    NSDictionary *param = @{@"machinedesc"   : @"iPhone Simulator-9.3",
                            @"timestamp"     : @"2016-09-26 11:55:10",
                            @"Edition"       : @"201609000",
                            @"versionnum"    : @"3.1.20",
                            @"platformtype"  : @"ios",
                            };
    [self.manager POST:@"QdData" parameters:param success:^(id responseObject) {
        
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

@end
