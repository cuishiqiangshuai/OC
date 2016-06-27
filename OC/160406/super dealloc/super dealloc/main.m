//
//  main.m
//  super dealloc
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Person *p1=[Person new];
//        [p1 setName:@"xiaoming"];
//        [p1 release];
        
        Student *s1=[Student new];
        [s1 setName:@"小欧"];
        [s1 setStuID:@"16003"];
        [s1 release];
        
        //内存管理   管理的是OC中的对象  C的基本数据类型不去管理
    }
    return 0;
}
