//
//  RegisterParam.m
//  IFSoapNetworkManager
//
//  Created by shoule on 16/10/8.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import "RegisterParam.h"

@implementation RegisterParam

- (id)init
{
    if (self = [super init]) {
        _HeadImgPath = @"";
        _OpenID = @"";
        _TPName = @"";
        _InvitationCode = @"";
    }
    return self;
}



+ (instancetype)param{
    return [[self alloc]init];
}
@end
