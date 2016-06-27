//
//  main.m
//  5
//
//  Created by qingyun on 16/4/23.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "xiaoqiang.h"
#import "xiaoming.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        xiaoqiang *q1=[[xiaoqiang alloc] init];
        [q1 setPrice:25];
        [q1 setPiaoshu:10];
        xiaoming *m1=[[xiaoming alloc] init];
        
        [m1 setDelegete:q1];
        [m1 gotomovie];
        
    }
    return 0;
}
