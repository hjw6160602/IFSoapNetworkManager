//
//  RegisterParam.h
//  IFSoapNetworkManager
//
//  Created by shoule on 16/10/8.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import "BaseParam.h"

@interface RegisterParam : BaseParam

/** 手机验证码 */
@property (nonatomic, copy) NSString *code;
/** 手机号 */
@property (nonatomic, copy) NSString *phone;
/** 密码 */
@property (nonatomic, copy) NSString *pwd;
/** 昵称 */
@property (nonatomic, copy) NSString *Name;
/** 头像图片路径 */
@property (nonatomic, copy) NSString *HeadImgPath;
/** 第三方ID */
@property (nonatomic, copy) NSString *OpenID;
/** 第三方平台(QZone/Wechat/SinaWeibo 非必传) */
@property (nonatomic, copy) NSString *TPName;
/** 性别 */
@property (nonatomic, copy) NSString *Gender;
/** 邀请码 非必填*/
@property (nonatomic, copy) NSString *InvitationCode;

+ (instancetype)param;

@end
