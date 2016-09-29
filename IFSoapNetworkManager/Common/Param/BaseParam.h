//
//  BaseParam.h
//  BestCake3.0
//
//  Created by shoule on 15/8/19.
//  Copyright © 2015年 shoule. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseParam : NSObject
/** 时间戳 */
@property (nonatomic, strong, readonly) NSString *timestamp;
/** 平台类型(android:ios) */
@property (nonatomic, strong, readonly) NSString *platformtype;
/** 平台类型(app/cs) */
@property (nonatomic, strong, readonly) NSString *platformType;
/** 版本号 */
@property (nonatomic, strong, readonly) NSString *versionnum;
/** 机型描述 */
@property (nonatomic, strong, readonly) NSString *machinedesc;

+ (instancetype)param;

@end
