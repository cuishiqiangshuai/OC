//
//  main.m
//  文件管理
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        //文件简介：（大多数计算机程序在结束时，最终都会在磁盘上创建一个文件）
        //属性列表（有一类名为属性列表的对象，简写成plist）   （属性列表类包括：NSValue，NSArray，NSDictionary，BSString，NSNumber，NSDate，NSData。以及他们的变体，子类）   （写入和读取文件列表：集合属性列表类（NSArray,NSDictionary）具有一个-writeToFile:atomically:方法，可以讲属性列表写入文件，其他的不能直接写入，需要封装）      （writeToFile:atomically: 方法中的atomically：（atomically：的参数值为BOOl类型   用于通知Cocoa是否现将文件内容保存在临时文件中，当文件保存成功后，再讲临时文件和原始文件交换； 是一种安全机制，除非文件较大，否则都设置为YES）
        
        //文件管理类（作用：管理文件和目录  ）
//        NSFileManager *fm=[NSFileManager defaultManager];//创建NSFileManager对象进行文件操作
//        NSString *path=[fm currentDirectoryPath];
//        NSLog(@"当前目录：%@",path);//获取当前目录路径
//        NSString *fName=@"my.txt";//文件名
//        NSString *string=@"China";//
        //使用文件管理类可以对文件进行各种操作
        
        NSString *str=@"[黄]速度七十迈\n心情是自由自在\n希望终点是爱琴海\n全力奔跑\n梦在彼岸\n[泉]我们想漫游世界\n看奇迹就在眼前\n等待夕阳染红了\n天肩并着肩 许下心愿[羽]随风奔跑自由是方向\n追逐雷和闪电的力量\n把浩瀚的海洋装进我胸膛\n";
        [str writeToFile:@"str.txt" atomically:YES encoding:NSUTF8StringEncoding error:0];//这一步是写了一个文件，但是我们不知道它被写到哪去啦，所以就涉及到了文件管理类
        //文件管理类
        NSFileManager *fm=[NSFileManager defaultManager];
        //1.打印当前路径
        NSLog(@"%@",[fm currentDirectoryPath]);
        //1.查看文件是否存在
        if ([fm fileExistsAtPath:@"str.txt"])
        {
            //读出来
            NSLog(@"read:%@",[NSString stringWithContentsOfFile:@"str.txt" encoding:NSUTF8StringEncoding error:0]);
        }
        else
        {
            NSLog(@"文件不存在");
        }
        
        //数组
        NSArray *arr1=@[@"红楼梦",@"西游记"];
        [arr1 writeToFile:@"arr.plist" atomically:YES];
        NSLog(@"read:%@",[NSArray arrayWithContentsOfFile:@"arr.txt"]);
        //字典
        NSDictionary *dic1=@{@"name":@"xiaoming",@"age":@23};
        [dic1 writeToFile:@"dict.txt" atomically:YES];
        NSLog(@"read:%@",[NSDictionary dictionaryWithContentsOfFile:@"dict.txt"]);
        //查看文件是否有内容（前提是文件已存在）
        if ([fm contentsAtPath:@"str.txt"])
        {
            NSLog(@"%@",[fm contentsAtPath:@"str.txt"]);
        }
        //文件内容是否相同
        if ([fm contentsEqualAtPath:@"str.txt" andPath:@"dict.txt"])
        {
            NSLog(@"文件内容相同...");
        }
        else
        {
            NSLog(@"文件内容不同...");
        }
    }
    return 0;
}
