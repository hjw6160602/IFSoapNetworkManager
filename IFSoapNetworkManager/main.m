//
//  main.m
//  IFSoapNetworkManager
//
//  Created by liuwy on 16/9/26.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import "IFDemo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [[IFDemo new] request];
        CFRunLoopRun();
    }
    return 0;
}
