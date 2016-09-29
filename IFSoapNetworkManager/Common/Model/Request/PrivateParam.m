//
//  PrivateParam.m
//  BestCake3.0
//
//  Created by shoule on 15/8/20.
//  Copyright © 2015年 shoule. All rights reserved.
//

#import "PrivateParam.h"
#import "UserModel.h"

//#import "Utils.h"

@implementation PrivateParam

- (id)init
{
    if (self = [super init]) {
//        self.uid = [Utils userModel].Id;//[NSString stringWithFormat:@"%@",[Utils userModel];
//        self.City = [Utils readCity];
    }
    return self;
}

+ (instancetype)param{
    return [[self alloc]init];
}


@end
