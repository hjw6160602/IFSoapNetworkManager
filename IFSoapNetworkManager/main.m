//
//  main.m
//  IFSoapNetworkManager
//
//  Created by SaiDicaprio on 16/9/26.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import "IFDemo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [[IFDemo new] demo];
        CFRunLoopRun();
    }
    return 0;
}
