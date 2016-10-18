//
//  HTTPConfig.h
//  IFSoapNetworkManager
//
//  Created by shoule on 16/9/29.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

@interface HTTPConfig : NSObject
singleton_interface(HTTPConfig)

@property (nonatomic, copy, readonly) NSString *Lib;

@property (nonatomic, copy, readonly) NSString *ImgURL;

- (NSString *)pageWithMethodName:(NSString *)methodName;
@end
