//
//  main.m
//  上午一，block
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Login.h"
//对象间通信
//把block当成参数进行传递
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //（实现注册登录）  例子  建一个登录界面类和注册界面类
        
        
        //用协议实现注册登录
        //创建登陆对象
        Login *log=[Login new];
        [log login];
        //创建注册对象
        Register *regi=[Register new];
        [log goToRegister:regi];//去注册
        //怎么注册（填写用户名和密码）
        [regi registerWithName:@"xiaoming" andPass:@"123"];
        [log login];
    }
    return 0;
}
