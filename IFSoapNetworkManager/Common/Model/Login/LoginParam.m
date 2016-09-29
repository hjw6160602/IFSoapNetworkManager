//
//  LoginParam.m
//  BestCake3.0
//
//  Created by SaiDicaprio on 15/8/19.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

#import "LoginParam.h"
//#import <UIKit/UIKit.h>
//#import "Utils.h"
//#import "Const.h"

@implementation LoginParam

- (id)init
{
    if (self = [super init]) {
//        self.MachineID = [[UIDevice currentDevice].identifierForVendor UUIDString];
//        if ([Utils readCity])
//            self.City = [Utils readCity];
//        else self.City = @"";
        
        self.MachineID = @"";
        self.City = @"上海";
    }
    return self;
}

+ (instancetype)param
{
    return [[self alloc] init];
}



@end
