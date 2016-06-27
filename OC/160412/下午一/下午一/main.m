//
//  main.m
//  下午一
//
//  Created by qingyun on 16/4/12.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
//函数
void func1(void);
void func2(int ,int );
int func3(int ,int );
//函数别名

int (*funcPtr)(int,int);//函数指针
int * func4(int,int);//指针函数
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //函数的调用
        func1();
        func2(12, 23);
        NSLog(@"%d",func3(12, 23));
        //指针函数的调用
        NSLog(@"%p,%d",func4(12, 23),*(func4(12, 23)));
        //函数指针:就是一个地址，函数名也是一个地址，就是一个指针
        funcPtr=func3;
        NSLog(@"%p,%p",funcPtr,func3);
        
    }
    return 0;
}

//函数的实现
void func1()
{
    NSLog(@"无参数无返回值的函数....");
}
void func2(int a,int b)
{
    NSLog(@"带两个int参数的无返回值的函数....");
}
int func3(int a,int b)
{
    NSLog(@"带两个int参数的返回值为int的函数....");
    return a+b;
}

//指针函数的实现
int* func4(int a,int b)
{
    NSLog(@"带两个整形参数的返回值为int型指针的指针函数....");
    int result1=a+b;
    int *p=&result1;
    return p;
}
//函数指针
