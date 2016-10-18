//
//  PrivateParam.m
//  BestCake3.0
//
//  Created by SaiDicaprio on 15/8/20.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

#import "PrivateParam.h"
#import "UserModel.h"

//#import "Utils.h"

@implementation PrivateParam

- (id)init
{
    if (self = [super init]) {
        self.uid = [UserModel sharedUserModel].Id;//[NSString stringWithFormat:@"%@",[Utils userModel];
        self.City = @"上海";
    }
    return self;
}

+ (instancetype)param{
    return [[self alloc]init];
}


@end
