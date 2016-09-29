//
//  SoapResult.h
//  BestCake3.0
//
//  Created by shoule on 15/8/18.
//  Copyright © 2015年 shoule. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SoapResult : NSObject

/** 返回结果状态 */
@property (nonatomic, assign) NSInteger Status;
/** 返回结果消息 */
@property (nonatomic, strong) NSString *Msg;
/** 返回结果数据 */
@property (nonatomic, strong) id Data;

@end
