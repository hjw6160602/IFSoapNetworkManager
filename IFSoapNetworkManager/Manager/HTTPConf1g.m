//
//  HTTPConfig.m
//  IFSoapNetworkManager
//
//  Created by shoule on 16/9/29.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import <Foundation/Foundation.h>

//#define ActivityURL @"http://api.bestcake.com/Activities.svc?wsdl"
//#define WebServicesURL @"http://api.bestcake.com/Member.svc?wsdl"
//#define CompanyServicesURL @"http://api.bestcake.com/Company.svc?wsdl"
//#define MessageWebServicesURL @"http://api.bestcake.com/Message.svc?wsdl"
//#define OrderWebServicesURL @"http://api.bestcake.com/Order.svc?wsdl"
//#define ProductWebServicesURL @"http://api.bestcake.com/Product.svc?wsdl"
//#define HdProductWebServicesURL @"http://api.bestcake.com/Product.svc?wsdl"
//#define JZBWebServicesURL @"http://api.bestcake.com/MemberAccount.svc?wsdl"
//#define ZcWebServicesURL @"http://api.bestcake.com/Crowdfunding.svc?wsdl"
//#define DeliveryCloudWebServicesURL @"http://api.bestcake.com/DeliveryCloud.svc?wsdl"
//#define WeChatWebServicesURL @"http://api.bestcake.com/WeChatAttest.svc?wsdl"
//#define TaskURL @"http://api.bestcake.com/Task.svc?wsdl"
//#define ReceiveActivityURL @"http://api.bestcake.com/ReceiveActivity.svc?wsdl"
//#define DeliveryWebServicesURL @"http://api.bestcake.com/Delivery.svc?wsdl"
//#define AdvertisingWebServicesURL @"http://api.bestcake.com/Advertising.svc?wsdl"
//#define ShoppingCartWebServicesURL @"http://api.bestcake.com/ShoppingCart.svc?wsdl"

//#define ActivityURL @"http://api.test.bestcake.com/Activities.svc?wsdl"
//#define WebServicesURL @"http://api.test.bestcake.com/Member.svc?wsdl"
//#define CompanyServicesURL @"http://api.test.bestcake.com/Company.svc?wsdl"
//#define MessageWebServicesURL @"http://api.test.bestcake.com/Message.svc?wsdl"
//#define OrderWebServicesURL @"http://api.test.bestcake.com/Order.svc?wsdl"
//#define ProductWebServicesURL @"http://api.test.bestcake.com/Product.svc?wsdl"
//#define HdProductWebServicesURL @"http://api.test.bestcake.com/Product.svc?wsdl"
//#define JZBWebServicesURL @"http://api.test.bestcake.com/MemberAccount.svc?wsdl"
//#define ZcWebServicesURL @"http://api.test.bestcake.com/Crowdfunding.svc?wsdl"
//#define DeliveryCloudWebServicesURL @"http://api.test.bestcake.com/DeliveryCloud.svc?wsdl"
//#define WeChatWebServicesURL @"http://api.test.bestcake.com/WeChatAttest.svc?wsdl"
//#define TaskURL @"http://api.test.bestcake.com/Task.svc?wsdl"
//#define ReceiveActivityURL @"http://api.test.bestcake.com/ReceiveActivity.svc?wsdl"
//#define DeliveryWebServicesURL @"http://api.test.bestcake.com/Delivery.svc?wsdl"
//#define AdvertisingWebServicesURL @"http://api.test.bestcake.com/Advertising.svc?wsdl"
//#define ShoppingCartWebServicesURL @"http://api.test.bestcake.com/ShoppingCart.svc?wsdl"

//#define ActivityURL @"http://api.cs.bestcake.com/Activities.svc?wsdl"
//#define WebServicesURL @"http://api.cs.bestcake.com/Member.svc?wsdl"
//#define CompanyServicesURL @"http://api.cs.bestcake.com/Company.svc?wsdl"
//#define MessageWebServicesURL @"http://api.cs.bestcake.com/Message.svc?wsdl"
//#define OrderWebServicesURL @"http://api.cs.bestcake.com/Order.svc?wsdl"
//#define ProductWebServicesURL @"http://api.cs.bestcake.com/Product.svc?wsdl"
//#define HdProductWebServicesURL @"http://api.cs.bestcake.com/Product.svc?wsdl"
//#define JZBWebServicesURL @"http://api.cs.bestcake.com/MemberAccount.svc?wsdl"
//#define ZcWebServicesURL @"http://api.cs.bestcake.com/Crowdfunding.svc?wsdl"
//#define DeliveryCloudWebServicesURL @"http://api.cs.bestcake.com/DeliveryCloud.svc?wsdl"
//#define WeChatWebServicesURL @"http://api.cs.bestcake.com/WeChatAttest.svc?wsdl"
//#define TaskURL @"http://api.cs.bestcake.com/Task.svc?wsdl"
//#define ReceiveActivityURL @"http://api.cs.bestcake.com/ReceiveActivity.svc?wsdl"
//#define DeliveryWebServicesURL @"http://api.cs.bestcake.com/Delivery.svc?wsdl"
//#define AdvertisingWebServicesURL @"http://api.cs.bestcake.com/Advertising.svc?wsdl"
//#define ShoppingCartWebServicesURL @"http://api.cs.bestcake.com:9102/ShoppingCart.svc?wsdl"


//#define ActivityURL @"http://testapp.bestcake.com:9102/Activities.svc?wsdl"
//#define WebServicesURL @"http://testapp.bestcake.com:9102/Member.svc?wsdl"
//#define CompanyServicesURL @"http://testapp.bestcake.com:9102/Company.svc?wsdl"
//#define MessageWebServicesURL @"http://testapp.bestcake.com:9102/Message.svc?wsdl"
//#define OrderWebServicesURL @"http://testapp.bestcake.com:9102/Order.svc?wsdl"
//#define ProductWebServicesURL @"http://testapp.bestcake.com:9102/Product.svc?wsdl"
//#define HdProductWebServicesURL @"http://testapp.bestcake.com:9102/Product.svc?wsdl"
//#define JZBWebServicesURL @"http://testapp.bestcake.com:9102/MemberAccount.svc?wsdl"
//#define ZcWebServicesURL @"http://testapp.bestcake.com:9102/Crowdfunding.svc?wsdl"
//#define DeliveryCloudWebServicesURL @"http://testapp.bestcake.com:9102/DeliveryCloud.svc?wsdl"
//#define WeChatWebServicesURL @"http://testapp.bestcake.com:9102/WeChatAttest.svc?wsdl"
//#define TaskURL @"http://testapp.bestcake.com:9102/Task.svc?wsdl"
//#define ReceiveActivityURL @"http://testapp.bestcake.com:9102/ReceiveActivity.svc?wsdl"
//#define DeliveryWebServicesURL @"http://testapp.bestcake.com:9102/Delivery.svc?wsdl"
//#define AdvertisingWebServicesURL @"http://testapp.bestcake.com:9102/Advertising.svc?wsdl"
//#define ShoppingCartWebServicesURL @"http://testapp.bestcake.com:9102/ShoppingCart.svc?wsdl"

//#define ActivityURL @"http://testapp.bestcake.com:9102/Activities.svc?wsdl"
//#define WebServicesURL @"http://testapp.bestcake.com:9102/Member.svc?wsdl"
//#define CompanyServicesURL @"http://testapp.bestcake.com:9102/Company.svc?wsdl"
//#define MessageWebServicesURL @"http://testapp.bestcake.com:9102/Message.svc?wsdl"
//#define OrderWebServicesURL @"http://testapp.bestcake.com:9102/Order.svc?wsdl"
//#define ProductWebServicesURL @"http://testapp.bestcake.com:9102/Product.svc?wsdl"
//#define HdProductWebServicesURL @"http://testapp.bestcake.com:9102/Product.svc?wsdl"
//#define JZBWebServicesURL @"http://testapp.bestcake.com:9102/MemberAccount.svc?wsdl"
//#define ZcWebServicesURL @"http://testapp.bestcake.com:9102/Crowdfunding.svc?wsdl"
//#define DeliveryCloudWebServicesURL @"http://testapp.bestcake.com:9102/DeliveryCloud.svc?wsdl"
//#define WeChatWebServicesURL @"http://testapp.bestcake.com:9102/WeChatAttest.svc?wsdl"
//#define TaskURL @"http://testapp.bestcake.com:9102/Task.svc?wsdl"
//#define ReceiveActivityURL @"http://testapp.bestcake.com:9102/ReceiveActivity.svc?wsdl"
//#define DeliveryWebServicesURL @"http://testapp.bestcake.com:9102/Delivery.svc?wsdl"
//#define AdvertisingWebServicesURL @"http://testapp.bestcake.com:9102/Advertising.svc?wsdl"
//#define ShoppingCartWebServicesURL @"http://testapp.bestcake.com:9102/ShoppingCart.svc?wsdl"


//仿真蛋糕列表图片
//#define KConstellImgurl @"http://res.test.bestcake.com/images/app/star/"
//#define KListImgurl     @"http://res.test.bestcake.com/images/app/listnew/"
//#define KBaseImgurl     @"http://res.test.bestcake.com/images/app/item/"
//#define KLevelImgurl    @"http://res.test.bestcake.com/images/app/level/"
//#define KTestImgurl     @"http://res.test.bestcake.com/images/app/detailnew/"
//#define KCartImgurl     @"http://res.test.bestcake.com/images/app/cartnew/"
//#define KOrderImgurl    @"http://res.test.bestcake.com/images/app/ordernew/"
//#define KTestImgurl30   @"http://res.test.bestcake.com/images/app/productnew/"
//#define KshowImgurl     @"http://res.test.bestcake.com/images/app/show/"
//#define KcityImgurl     @"http://res.test.bestcake.com/images/app/city/"
//#define KoldImgurl      @"http://res.test.bestcake.com/images/ksk/item/"
//#define KCouponsImgurl  @"http://res.test.bestcake.com/images/app/coupon/"

//蛋糕列表图片
//#define KConstellImgurl @"http://res.bestcake.com/images/app/star/"
//#define KListImgurl     @"http://res.bestcake.com/images/app/listnew/"
//#define KBaseImgurl     @"http://res.bestcake.com/images/app/item/"
//#define KLevelImgurl    @"http://res.bestcake.com/images/app/level/"
//#define KTestImgurl     @"http://res.bestcake.com/images/app/detailnew/"
//#define KCartImgurl     @"http://res.bestcake.com/images/app/cartnew/"
//#define KOrderImgurl    @"http://res.bestcake.com/images/app/order/"
//#define KTestImgurl30   @"http://res.bestcake.com/images/app/productnew/"
//#define KshowImgurl     @"http://res.bestcake.com/images/app/show/"
//#define KcityImgurl     @"http://res.bestcake.com/images/app/city/"
//#define KoldImgurl      @"http://res.bestcake.com/images/ksk/item/"
//#define KCouponsImgurl  @"http://res.bestcake.com/images/app/coupon/"




//let WSDL        =  ".svc?wsdl"
//let 命名空间      = "http://tempuri.org"
//
//let ActivityURL          = 库地址 + "/Activities" + WSDL
//let MemberURL            = 库地址 + "/Member" + WSDL
//let MessageURL           = 库地址 + "/Message" + WSDL
//let OrderURL             = 库地址 + "/Order" + WSDL
//let ProductURL           = 库地址 + "/Product" + WSDL
//let MemberAccountURL     = 库地址 + "/MemberAccount" + WSDL
//let CrowdfundingURL      = 库地址 + "/Crowdfunding" + WSDL
//let DeliveryCloudURL     = 库地址 + "/DeliveryCloud" + WSDL
//let WeChatAttestURL      = 库地址 + "/WeChatAttest" + WSDL
//let TaskURL              = 库地址 + "/Task" + WSDL
//let ReceiveActivityURL   = 库地址 + "/ReceiveActivity" + WSDL
//let DeliveryURL          = 库地址 + "/Delivery" + WSDL
//let AdvertisingURL       = 库地址 + "/Advertising" + WSDL
//let ShoppingCartURL      = 库地址 + "/ShoppingCart" + WSDL
//
////"http://api.bestcake.com/Activities.svc?wsdl"
////"http://api.test.bestcake.com/Activities.svc?wsdl"
////"http://testapp.bestcake.com:9102/Advertisities.svc?wsdl"
//
//
//let ACTIVITY_ACTION_URL         = "\(命名空间)/IActivities"
//let MEMBER_ACTION_URL           = "\(命名空间)/IMember"
//let MESSAGE_ACTION_URL          = "\(命名空间)/IMessage"
//let ORDER_ACTION_URL            = "\(命名空间)/IOrder"
//let PRODUCT_ACTION_URL          = "\(命名空间)/IProduct"
//let MEMBERACCOUNT_ACTION_URL    = "\(命名空间)/IMemberAccount"
//let CROWDFUNDING_ACTION_URL     = "\(命名空间)/ICrowdfunding"
//let DELIVERYCLOUD_ACTION_URL    = "\(命名空间)/IDeliveryCloud"
//let WECHATATTEST_ACTION_URL     = "\(命名空间)/IWeChatAttest"
//let TASK_ACTION_URL             = "\(命名空间)/ITask"
//let RECEIVEACTIVITY_ACTION_URL  = "\(命名空间)/IReceiveActivity"
//let DELIVERY_ACTION_URL         = "\(命名空间)/IDelivery"
//let ADVERTISING_ACTION_URL      = "\(命名空间)/IAdvertising"
//let SHOPPINGCART_ACTION_URL     = "\(命名空间)/IShoppingCart"
//
//
//
//let 图片地址             = HTTP头部 + "res." + 贝思客域名 + "/images/app/"
//let ConstellImgURL      = 图片地址 + "star/"
//let ListImgURL          = 图片地址 + "listnew/"
//let BaseImgURL          = 图片地址 + "item/"
//let LevelImgURL         = 图片地址 + "level/"
//let DetailImgURL        = 图片地址 + "detailnew/"
//let CartImgURL          = 图片地址 + "cartnew/"
//let OrderImgURL         = 图片地址 + "ordernew/"
//let ProductImgURL       = 图片地址 + "productnew/"
//let ShowImgURL          = 图片地址 + "show/"
//let CityImgURL          = 图片地址 + "city/"
//let CouponsImgURL       = 图片地址 + "coupon/"
