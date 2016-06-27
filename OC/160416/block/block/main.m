//
//  main.m
//  block
//
//  Created by qingyun on 16/4/16.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boss.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Boss *boss=[Boss new];
        Person1 *p1=[Person1 new];
        [boss want:p1];
        [p1 takemovie];
    }
    return 0;
}
