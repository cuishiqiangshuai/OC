//
//  main.m
//  单例模式
//
//  Created by qingyun on 16/4/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1=[Person sharedPerson];
        [p1 setName:@"xiaoxiao"];
        NSLog(@"p1  %@,%p",p1,p1);
//        Person *p2=[Person new];
//        [p2 setName:@"xiali"];
//        NSLog(@"p2  %@,%p",p2,p2);
//        Person *p3=[[Person alloc] init];//单例模式中最好不使用这两种方式
//        [p3 setName:@"xxiiisd"];
//        NSLog(@"p3   %@,%p",p3,p3);
//        //char * const p  p地址不可更改  但是地址里面的内容可变
        
        Person *p2=[Person sharedPerson];
        [p2 setName:@"sadasd"];
        NSLog(@"p2  %@,%p",p2,p2);
        //单例模式的对象  是在程序结束的时候系统自动释放
    }
    return 0;
}
