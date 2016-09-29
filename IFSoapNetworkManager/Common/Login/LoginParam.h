//
//  LoginParam.h
//  BestCake3.0
//
//  Created by shoule on 15/8/19.
//  Copyright © 2015年 shoule. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseParam.h"

@interface LoginParam : BaseParam

@property (nonatomic, copy) NSString *City;
@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *passWord;
@property (nonatomic, copy) NSString *OpenID;
@property (nonatomic, copy) NSString *TPName;
/** 手机的UUID */
@property (nonatomic, copy) NSString* MachineID;
+ (instancetype)param;
@end
