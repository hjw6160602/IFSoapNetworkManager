//
//  HTTPConfig.m
//  IFSoapNetworkManager
//
//  Created by shoule on 16/9/29.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//


#import "HTTPConfig.h"
@interface HTTPConfig ()
@property (nonatomic, strong, readonly)NSDictionary *URLActionMap;
@end

@implementation HTTPConfig
singleton_implementation(HTTPConfig)

static NSString * const HTTPHeader          = @"http://";
static NSString * const BestCakeDomain      = @"bestcake.com";
static NSString * const WSDL                =  @".svc?wsdl";

static NSString * const ActivityPage        = @"Activities";
static NSString * const MemberPage          = @"Member";
static NSString * const MessagePage         = @"Message";
static NSString * const OrderPage           = @"Order";
static NSString * const ProductPage         = @"Product";
static NSString * const MemberAccountPage   = @"MemberAccount";
static NSString * const CrowdfundingPage    = @"Crowdfunding";
static NSString * const DeliveryCloudPage   = @"DeliveryCloud";
static NSString * const WeChatAttestPage    = @"WeChatAttest";
static NSString * const TaskPage            = @"Task";
static NSString * const ReceiveActivityPage = @"ReceiveActivity";
static NSString * const DeliveryPage        = @"Delivery";
static NSString * const AdvertisingPag      = @"Advertising";
static NSString * const ShoppingCartPage    = @"ShoppingCart";

- (NSString *)Lib{
    //    NSString *ProductLib    = [NSString stringWithFormat:@"%@api.%@", HTTPHeader ,BestCakeDomain];
    //    NSString *SimProductLib = [NSString stringWithFormat:@"%@api.test.%@", HTTPHeader ,BestCakeDomain];
    NSString *TestLib       = [NSString stringWithFormat:@"%@api.cs.%@", HTTPHeader ,BestCakeDomain];
    //    NSString *DevelopLib    = [NSString stringWithFormat:@"%@testapp.%@:9102", HTTPHeader ,BestCakeDomain];
    
    return TestLib;
}

- (NSString *)ImgURL{
    return [NSString stringWithFormat:@"%@res.%@/images/app/", HTTPHeader ,BestCakeDomain];
}

- (NSDictionary *)URLActionMap{
    return @{@"Login"                    : MemberPage,
             @"AddMember"                : MemberPage,
             @"QdData"                   : ActivityPage,
             @"SendIdentityCode"         : MessagePage,
             @"NewGetHomePageModuleList" : AdvertisingPag
             };
}

- (NSString *)pageWithMethodName:(NSString *)methodName{
    return [self.URLActionMap objectForKey:methodName];
}


@end
