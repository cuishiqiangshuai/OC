//
//  main.m
//  NULL
//
//  Created by qingyun on 16/4/5.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //c 语言中的空指针NULL 0X0
        char *p1=NULL;
        NSLog(@"p1==%p",p1);
        //OC 语言中表示对象类型的空指针（表示指针没有具体指向）nil
        NSObject *obj1=nil;
        NSLog(@"obj==%p,%@",obj1,obj1);
        id obj2=nil;//id表示任意类型的对象，在OC中等同于NSObject*
        NSLog(@"obj2=%p,%@",obj2,obj2);
        id obj3=@"";//@""表示有内存，但是没有值
        NSLog(@"obj3==%p,%@",obj3,obj3);
        //表示什么都没有的对象的 类
        NSNull *null1=[NSNull null];//只有这一个方法
        NSLog(@"null1==%p,%@",null1,null1);
        //NSNull分配的内存都是一样的
        for (int i=0; i<10; i++) {
            NSNull *newNull=[NSNull null];
            NSLog(@"newNull==%p,%@",newNull,newNull);
        }
        //Nil表示类类型的空指针
        Class cl1=Nil;
        NSLog(@"cl1=%p,%@",cl1,cl1);
    }
    return 0;
}
