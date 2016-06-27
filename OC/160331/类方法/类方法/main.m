//
//  main.m
//  类方法
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "1.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [person sleep];
        Person *p2=[Person personWithName:@"小丽" andAge:23 andSex:@"女"];
        [p2 showPerson];
        [p2 eat];
        [p2 play];
    }
    return 0;
}
