//
//  LoginResult.h
//  BestCake3.0
//
//  Created by shoule on 15/8/19.
//  Copyright © 2015年 shoule. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginResult : NSObject

/** 私钥 */
@property (nonatomic, strong) NSString *private;
/** 用户是否登录 */
@property (nonatomic, strong) NSString *islogin;
/** 用户密码 */
@property (nonatomic, strong) NSString* Password;

/** 用户手机号 */
@property (nonatomic, strong) NSString *Mobile;
/** 用户ID */
@property (nonatomic,strong) NSString *Id;
/** 会员当前经验 */
@property (nonatomic,strong) NSString *Exp;
/** 会员升级所需经验 */
@property (nonatomic,strong) NSString *EndExp;
/** 众筹魅力值 */
@property (nonatomic,strong) NSString *CharmValue;
/** 昵称 */
@property (nonatomic,strong) NSString *Name;
/** 昵称 */
@property (nonatomic,strong) NSString *RealName;
/** 用户名*/
@property (nonatomic,strong) NSString *LoginName;
/** 用户生日*/
@property (nonatomic,strong) NSString *Birthday;
/** 极致币 */
@property (nonatomic,strong) NSString *Money;
/** 当前等级 */
@property (nonatomic,strong) NSString *Level;
/** 当前等级名称 */
@property (nonatomic,strong) NSString *LevelName;
/** 会员优惠劵拥有数量 */
@property (nonatomic,strong) NSString *CouponCount;
/** 是否修改生日 */
@property (nonatomic,strong) NSString *AreaName;
/** 会员是否已完善信息 */
@property (nonatomic,strong) NSString *AreaCode;
/** 1：表示有领取过任务，0：表示没有 */
@property (nonatomic,strong) NSString *Status;
/** 气泡图片 */
@property (nonatomic,strong) NSString *BulleImg;
/** 用户性别 */
@property (nonatomic, strong) NSString* Gender;
/** 用户头像URL */
@property (nonatomic, strong) NSString* HeadImgPath;
/** 当日签到检核 0未签到，1已签到 */
@property (nonatomic, strong) NSString* SignTo;

//        AreaCode = 1;
//        AreaName = 0;
//        Birthday = "2046-07-28 00:00:00";
//        BulleImg = "http://res.bestcake.com/images/task/1431347220347.jpg";
//        CharmValue = 0;
//        CouponCount = 1;
//        EndExp = 2999;
//        Exp = 20;
//        Gender = 0;
//        HeadImgPath = "";
//        Id = 389784;
//        Level = 0;
//        LevelName = "\U6781\U81f4\U83dc\U9e1f";
//        LoginName = 15618312806;
//        Mobile = 15618312806;
//        Money = 0;
//        Name = "\U53f6\U5e05";
//        RealName = 123456;
//        SignTo = 0;
//        Status = 0;


@end
