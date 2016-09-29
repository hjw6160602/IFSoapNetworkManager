//
//  BaseParam.m
//  BestCake3.0
//
//  Created by shoule on 15/8/19.
//  Copyright © 2015年 shoule. All rights reserved.
//

#import "BaseParam.h"


@implementation BaseParam

@synthesize timestamp;
@synthesize versionnum;
@synthesize machinedesc;

- (id)init
{
    if (self = [super init]) {
        _platformtype = @"ios";
        timestamp = self.timestamp;
        versionnum = self.versionnum;
        machinedesc = self.machinedesc;
    }
    return self;
}

- (NSString *)timestamp{
    NSDate *date = [NSDate date];
    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    NSInteger interval = [zone secondsFromGMTForDate: date];
    NSDate *localeDate = [date  dateByAddingTimeInterval: interval];
    NSDateFormatter  *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    
    return [dateformatter stringFromDate:localeDate];
}

- (NSString *)versionnum{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

- (NSString *)machinedesc{
    return @"iPhone Simulator";
}

+ (instancetype)param{
    return [[self alloc]init];
}

@end
