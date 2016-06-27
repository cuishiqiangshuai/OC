//
//  main.m
//  OC-简单文件管理(NSFileManager)
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str=@"[黄]速度七十迈\n心情是自由自在\n希望终点是爱琴海\n全力奔跑\n梦在彼岸\n[泉]我们想漫游世界\n看奇迹就在眼前\n等待夕阳染红了\n天肩并着肩 许下心愿[羽]随风奔跑自由是方向\n追逐雷和闪电的力量\n把浩瀚的海洋装进我胸膛\n";
        [str writeToFile:@"str.txt" atomically:YES encoding:NSUTF8StringEncoding error:0];
//        NSLog(@"read:%@",[NSString stringWithContentsOfFile:@"str.txt" encoding:NSUTF8StringEncoding error:0]);
        //文件管理类
        NSFileManager *fm=[NSFileManager defaultManager];
        //1.打印当前路径
        NSLog(@"%@",[fm currentDirectoryPath]);
        //2. 查看文件是否存在
        if ([fm fileExistsAtPath:@"str.txt"])
        {
            //读出来
            NSLog(@"read:%@",[NSString stringWithContentsOfFile:@"str.txt" encoding:NSUTF8StringEncoding error:0]);
        }
        else
        {
            NSLog(@"文件不存在...");
        }
        //数组
        NSArray *arr1=@[@"红楼梦",@"西游记"];
        [arr1 writeToFile:@"arr.plist" atomically:YES];
        NSLog(@"read:%@",[NSArray arrayWithContentsOfFile:@"arr.plist"]);
        //字典
        NSDictionary *dic1=@{@"name":@"xiaoming",@"age":@23};
        [dic1 writeToFile:@"dict.txt" atomically:YES];
        NSLog(@"read:%@",[NSDictionary dictionaryWithContentsOfFile:@"dict.txt"]);
        //3.查看文件是否有内容（文件已经存在）
        if ([fm contentsAtPath:@"str.txt"])
        {
            NSLog(@"%@",[fm contentsAtPath:@"str.txt"]);
        }
        //4.文件内容的比较
        if ([fm contentsEqualAtPath:@"str.txt" andPath:@"dict.txt"]) {
            NSLog(@"文件内容相同...");
        }
        else
        {
            NSLog(@"文件内容不同...\n");
        }
    }
    return 0;
}
