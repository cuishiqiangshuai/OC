//
//  GuanLiYuan.m
//  门禁系统作业
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "GuanLiYuan.h"
char n[100];
char m[100];
char n1[100];
char m1[100];
typedef NSDictionary *dic1;

@implementation GuanLiYuan

-(void)setGname:(NSString *)gname
{
    _gname=gname;
}
-(void)setGmima:(NSString *)gmima
{
    _gmima=gmima;
}
-(void)gotozhuce
{
    NSLog(@"你还没有注册，去注册");
    NSLog(@"请输入账号密码");
    scanf("%s",n);
    scanf("%s",m);
    NSString *n0=[NSString stringWithUTF8String:n];
    NSString *m0=[NSString stringWithUTF8String:m];
    NSFileManager *fm=[NSFileManager defaultManager];
    NSDictionary *dic1=@{@"gname":n0,@"gmima":m0};
    [dic1 writeToFile:@"dict.txt" atomically:YES];
    if ([fm fileExistsAtPath:@"dict.txt"])
    {
        NSLog(@"read:%@",[NSDictionary dictionaryWithContentsOfFile:@"dict.txt"]);
    }
    else
    {
        NSLog(@"文件不存在");
    }
    NSLog(@"%@",[fm currentDirectoryPath]);
}
-(void)denglu
{
    NSLog(@"输入账号密码：");
    NSString *n0=[NSString stringWithUTF8String:n];
    NSString *m0=[NSString stringWithUTF8String:m];
     NSFileManager *fm=[NSFileManager defaultManager];
    NSDictionary *dic1=@{@"gname":n0,@"gmima":m0};
    [dic1 writeToFile:@"dict.txt" atomically:YES];
    scanf("%s",n1);
    scanf("%s",m1);
    NSString *n11=[NSString stringWithUTF8String:n1];
    NSString *m11=[NSString stringWithUTF8String:m1];
    if ((n11=n0)&&(m11=m0))
    {
        NSLog(@"登陆成功");
    }
    else
    {
        NSLog(@"用户名不存在或密码错误,请重新输入");
        [self denglu];
    }
}
-(void)caozuo
{
    NSLog(@"1更改密码\n2增加员工\n3修改员工\n4浏览员工\n5删除员工\n0返回上一级");
//    int a;
//    scanf("%d",&a);
//    if (a==1)
//    {
//        NSLog(@"更改密码");
//        NSLog(@"输入旧密码：");
//        int a1;
//        scanf("%d",&a1);
//        if (a1==dic1[@"_gmima"])
//        {
//            NSLog(@"输入新的密码：");
//            int a2;
//            scanf("%d",&a2);
//            if ((a2=_gmima))
//            {
//                NSLog(@"与旧密码相同，请重新输入");
//            }
//            else
//            {
//                NSLog(@"修改成功");
//            }
//
//        }
//        else
//        {
//            NSLog(@"输入有误");
//        }
//    }
//    else if (a==2)
//    {
//        NSLog(@"增加员工");
//    }
//    else if (a==3)
//    {
//        NSLog(@"修改员工");
//    }
//    else if (a==4)
//    {
//        NSLog(@"浏览员工");
//    }
//    else if (a==5)
//    {
//        NSLog(@"删除员工");
//    }
//    else if (a==0)
//    {
//        NSLog(@"返回上一级");
//    }
//    else
//    {
//        NSLog(@"输入有误");
//    }
    
}
@end
