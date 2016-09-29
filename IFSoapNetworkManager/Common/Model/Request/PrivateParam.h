//
//  PrivateParam.h
//  BestCake3.0
//
//  Created by SaiDicaprio on 15/8/20.
//  Copyright © 2015年 SaiDicaprio. All rights reserved.
//

#import "BaseParam.h"

@interface PrivateParam : BaseParam

/** 用户的UID */
@property (nonatomic, strong) NSString *uid;
/** 当前城市 */
@property (nonatomic, strong) NSString *City;

+ (instancetype)param;

@end
