//
//  main.m
//  fun
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //不可变字符串 NSString
        //1.实例方法创建
        NSString *str1=@"hello";
        NSString *str2=[[NSString alloc]initWithCString:"qingyun" encoding:NSUTF8StringEncoding];//encoding指的是编码方式
        //alloc init==new new只是有一种初始化方式，但是alloc init可以有多种初始化方式  initWithXXXX
        NSString *str3=[[NSString alloc]initWithUTF8String:"china"];
        //str2和str3的方式都一样：将CD额字符串编码为OC的字符串
        NSString *str4=[[NSString alloc]initWithString:str1];
        NSLog(@"str1:%@,str2:%@,str3:%@,str4:%@,",str1,str2,str3,str4);
        NSLog(@"str1:%p,str2:%p,str3:%p,str4:%p",str1,str2,str3,str4);
        //改变指针的指向
        str2=@"ios";
        NSLog(@"str2:%@,%p",str2,str2);
        //从文件获取
        NSError *error;
        NSString *str5=[[NSString alloc]initWithContentsOfFile:@"" encoding:NSUTF8StringEncoding error:&error];
        
    }
    return 0;
}
