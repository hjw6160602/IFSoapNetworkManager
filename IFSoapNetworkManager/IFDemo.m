//
//  IFDemo.m
//  IFSoapNetworkManager
//
//  Created by liuwy on 16/9/26.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import "IFDemo.h"
#import "NetWorkManager.h"

@interface IFDemo ()
@property (nonatomic, strong) NetWorkManager *manager;
@end

@implementation IFDemo

- (void)request{
    self.manager = [NetWorkManager sharedManager];
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

@end
