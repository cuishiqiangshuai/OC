//
//  main.m
//  c重点回顾
//
//  Created by qingyun on 16/3/29.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
BOOL areTheySame(int a,int b)
{
    if (a==b)
    {
        return YES;
    }
    else
        return NO;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //nextStep   @指的是OC对象的一个标志!
        NSLog(@"Hello,world!");
        printf("C重点知识回顾\n");
        //C整型    %d
        int a=10;
        unsigned int b=-11;//无符号整型
        printf("a=%d,b=%d\n",a,b);
        //OC整型
        NSInteger c=101;//typedef int NSInteger
        NSUInteger d=20;
        printf("c=%ld,d=%lu\n",(long)c,(unsigned long)d);
        //浮点型
        float f1=23.3f;
        double f2=23.322;
        printf("f1=%f,f2=%lf\n",f1,f2);
        //OC字符型
        char c1='w';
        char c2[]={'h','e','l','l','o','\0'};//字符串
        char* c3="qingyun";
        printf("c1=%c,c2=%s,c3=%s\n",c1,c2,c3);
        //OC字符串
        NSString *str1=@"hello ios";
        NSString *str2=@"w";
        //printf("str1=%@,str2=%@\n",str1,str2);;//注意：OC完全兼容C，OC可以输出CD额所有类型，但是C得输出不可以输出对象！
        NSLog(@"str1=%@,str2=%@",str1,str2);
        //布尔类型 BOOL
        BOOL tag1=YES,tag2=NO;
        NSLog(@"tag1=%d,tag2=%d\n",tag1,tag2);
        //函数调用
        if (areTheySame(12, 23))//默认为真 等同于areTheySame(12,23)=YES
        {
            printf("相等\n");
        }
        else
        {
            printf("不相等\n");
        }
        //C的结构体
        struct Person
        {
            char name[100];
            int age;
        };
        //C的枚举
        enum weekdays
        {
            monday,
            tuesday,
            thursday
        };
        //枚举别名
        typedef enum{one,two,three} Num;
        Num n1=two;
        printf("n1=%d\n",n1);
        //OC枚举   可以指定元素的类型
        typedef NS_ENUM(char)
        {
            a1='x',
            a2='w',
            a3,
        }myString;
        myString m1=a2;
        printf("m1===%c\n",m1);
    }
    return 0;
}
