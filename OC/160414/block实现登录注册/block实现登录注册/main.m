//
//  main.m
//  block实现登录注册
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Login.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Login *log=[Login new];
        [log login];
        Register *reges=[Register new];
        [log goToRegister:reges];//去注册
        //注册信息
        [reges registerWithName:@"xiaoming" andPass:@"123"];
        //注册完成，再次登录
        [log login];
            }
    return 0;
}
