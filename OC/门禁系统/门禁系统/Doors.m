//
//  Doors.m
//  门禁系统
//
//  Created by qingyun on 16/4/19.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Doors.h"
#define GT @"guanliyuan.txt"//管理员文件
#define YT @"yuangong.txt"//员工文件
@interface Doors()
@property(nonatomic,strong)NSFileManager *fm;
@property(nonatomic,strong)NSMutableDictionary *gdic;
@property(nonatomic,strong)NSMutableArray *yArr;
@property(nonatomic,strong)NSString *yName,*yPass;

@end
@implementation Doors
-(NSFileManager *)fm
{
    if (!_fm)
    {
        _fm=[NSFileManager defaultManager];
    }
    return _fm;
}
-(NSMutableDictionary *)gdic
{
    if (!_gdic)
    {
        _gdic=[NSMutableDictionary dictionaryWithContentsOfFile:GT];
    }
    return _gdic;
}
-(NSMutableArray *)yArr
{
    if (!_yArr)
    {
        _yArr=[NSMutableArray arrayWithContentsOfFile:YT];
    }
    return _yArr;
}

-(void)showDoors
{
    if ([self.fm fileExistsAtPath:GT])
    {
        [self welcome];
    }
    else
    {
        [self GuanLiYuanZhuCe];
    }
}
-(void)GuanLiYuanZhuCe
{
    NSLog(@"输入管理员账号:");
    char *name=malloc(30);
    char *pass=malloc(30);
    char *pass2=malloc(30);
    scanf("%s",name);
    NSLog(@"输入管理员密码:");
    scanf("%s",pass);
    NSLog(@"再次输入管理员密码:");
    scanf("%s",pass2);
    [self writeWithName:name andPass:pass andPass2:pass2 andZhuCe:0];
}
-(void)writeWithName:(char *)name andPass:(char *)pass andPass2:(char *)pass2 andZhuCe:(int)flag
{
    NSString *nameOC=[NSString stringWithUTF8String:name];
    NSString *passOC=[NSString stringWithUTF8String:pass];
    NSString *pass2OC=[NSString stringWithUTF8String:pass2];
    if ([passOC isEqualToString:pass2OC])
    {
        self.gdic=[NSMutableDictionary dictionaryWithObjectsAndKeys:nameOC,@"name",passOC,@"pass", nil];
        [self.gdic writeToFile:GT atomically:YES];
        [self.fm currentDirectoryPath];
        if (flag==0)
        {
            NSLog(@"管理员注册成功");
        }
        if (flag==1)
        {
            NSLog(@"管理员修改自身密码成功");
        }
        if(flag==2)
        {
            NSLog(@"管理员修改员工信息成功");
        }
        [self welcome];
    }
    else
    {
        NSLog(@"两次密码输入不一致，是否重新输入（y/n?）");
        char yn='\0';
        getchar();
        if (yn=='y'||yn=='Y')
        {
            NSLog(@"请输入密码:");
            scanf("%s",pass);
            NSLog(@"再次输入:");
            scanf("%s",pass2);
            [self writeWithName:name andPass:pass andPass2:pass2 andZhuCe:flag];
        }
        else
        {
            NSLog(@"退出系统");
            exit(0);
        }
    }
}
-(void)welcome
{
    printf("~~~~~XXXX门禁管理系统~~~~~\n");
    printf("~~~~~管理员登陆 1~~~~~\n");
    printf("~~~~~员工登陆 2~~~~~\n");
    printf("~~~~~访客登陆 3~~~~~\n");
    printf("~~~~~退出 0~~~~~\n");
    //进行输入操作
    [self MenJinCaoZuo];
}
-(void)MenJinCaoZuo
{
    int a;
    scanf("%d",&a);
    switch (a){
        case 1:
            //管理员登录
            [self GuanLiYuanDengLu];
            break;
        case 2:
            //员工登录
            [self YuanGongDengLu];
            break;
        case 3:
            //访客登录
            break;
        case 0:
            //退出
            exit(0);
            break;
        default:
            NSLog(@"输入有误");
            [self welcome];
            break;
    }
}
-(void)GuanLiYuanDengLu
{
    char *name=malloc(30);
    char *pass=malloc(30);
    NSLog(@"请输入账号:");
    scanf("%s",name);
    NSLog(@"请输入密码:");
    scanf("%s",pass);
    NSString *nameOC=[NSString stringWithUTF8String:name];
    NSString *passOC=[NSString stringWithUTF8String:pass];
    if ([nameOC isEqualToString:self.gdic[@"name"]]&&[passOC isEqualToString:self.gdic[@"pass"]])
    {
        NSLog(@"登陆成功");
        [self GuanLiYuanCaoZuoJieMian];
    }
    else
    {
        NSLog(@"输入有误，是否重新输入（y/n?）");
        char yn='\0';
        //先获取上一次回车
        getchar();
        scanf("%c",&yn);
        if (yn == 'y'||yn == 'Y')
        {
            [self GuanLiYuanDengLu];
        }
        else
        {
            [self welcome];
        }
    }
}
-(void)GuanLiYuanCaoZuoJieMian
{
    NSLog(@"~~~~~管理员操作界面~~~~~");
    NSLog(@"~~~~~修改自身密码 1~~~~~");
    NSLog(@"~~~~~增加员工信息 2~~~~~");
    NSLog(@"~~~~~浏览员工信息 3~~~~~");
    NSLog(@"~~~~~修改员工信息 4~~~~~");
    NSLog(@"~~~~~删除员工信息 5~~~~~");
    NSLog(@"~~~~~返回上一级   0~~~~~");
    [self GuanLiYuanJieMian];
}
-(void)GuanLiYuanJieMian
{
    int a;
    scanf("%d",&a);
    switch (a) {
        case 1:
            //修改自身密码
            [self GLYXGZSMM];
            break;
        case 2:
            //增加员工信息
            [self GuanZeng];
            break;
        case 3:
            [self LiuLan];
            break;
        case 4:
            [self GuanXiu];
            break;
        case 5:
            [self ShanChu];
            break;
        case 0:
            [self welcome];
            break;
        default:
            NSLog(@"输入有误");
            [self GuanLiYuanCaoZuoJieMian];
            break;
    }
}
-(void)GLYXGZSMM
{
    char *pass=malloc(30);
    char *pass2=malloc(30);
    char *pass3=malloc(30);
    NSLog(@"请输入旧密码:");
    scanf("%s",pass);
    NSString *passOC=[NSString stringWithUTF8String:pass];
    if ([passOC isEqualToString:self.gdic[@"pass"]])
    {
        NSLog(@"请输入新密码:");
        scanf("%s",pass2);
        NSLog(@"再次输入新密码:");
        scanf("%s",pass3);
        char *name=(char *)[self.gdic[@"name"] UTF8String];
        [self writeWithName:name andPass:pass2 andPass2:pass3 andZhuCe:1];
    }
    else
    {
        NSLog(@"旧密码错误，是否重新输入（y/n?）");
        char yn='\0';
        if (yn=='y'||yn=='Y')
        {
            [self GLYXGZSMM];
        }
        else
        {
            [self GuanLiYuanCaoZuoJieMian];
        }
    }
}
-(void)GuanZeng
{
    char *name=malloc(30);
    NSLog(@"输入员工账号:");
    scanf("%s",name);
    BOOL flag=NO;
    NSString *nameOC=[NSString stringWithUTF8String:name];
    if ([self.fm fileExistsAtPath:YT])//员工文件存在
    {
        //判断输入的账号是否存在
        for (NSDictionary *dic in self.yArr)
        {
            if ([dic[@"name"] isEqualToString:nameOC])
            {
                NSLog(@"该员工已存在，添加失败");
                flag=YES;
                break;
            }
        }
        if(flag==NO)//员工账号不存在
        {
                char *pass=malloc(30);
                NSLog(@"输入员工密码:");
                scanf("%s",pass);
                NSString *passOC=[NSString stringWithUTF8String:pass];
                NSDictionary *dic=[NSDictionary dictionaryWithObjectsAndKeys:nameOC,@"name",passOC,@"pass", nil];
                [self.yArr addObject:dic];
                [self.yArr writeToFile:YT atomically:YES];
                NSLog(@"增加员工信息成功");
        }
    }
    else//员工文件不存在
    {
        char *pass=malloc(30);
        NSLog(@"输入员工密码:");
        scanf("%s",pass);
        NSString *passOC=[NSString stringWithUTF8String:pass];
        NSDictionary *dic=[NSDictionary dictionaryWithObjectsAndKeys:nameOC,@"name",passOC,@"pass", nil];
        self.yArr=[NSMutableArray array];
        [self.yArr addObject:dic];
        [self.yArr writeToFile:YT atomically:YES];
        NSLog(@"增加员工信息成功");
    }
    [self GuanLiYuanCaoZuoJieMian];
}
-(void)LiuLan
{
    if (self.yArr.count>0)
    {
        for (NSDictionary *dic in self.yArr)
        {
            NSLog(@"name:%s,pass:%s",[dic[@"name"] UTF8String],[dic[@"pass"] UTF8String]);
        }
        NSLog(@"~~~~~~~~end~~~~~~~");
    }
    else
    {
        NSLog(@"没有员工信息");
    }
    [self GuanLiYuanCaoZuoJieMian];

}
-(void)GuanXiu
{
    if ([self.fm fileExistsAtPath:YT]&&self.yArr.count>0)//员工文件存在
    {
        char *name=malloc(30);
        NSString *nameOC=[NSString stringWithUTF8String:name];
        NSLog(@"输入员工账号:");
        scanf("%s",name);
        BOOL flag=NO;
        for (NSDictionary *dic in self.yArr)
        {
            if ([dic[@"name"] isEqualToString:nameOC])
            {
                flag=YES;
                break;
            }
            if (flag==NO)
            {
               // 账号存在
                char *pass=malloc(30);
                NSString *passOC=[NSString stringWithUTF8String:pass];
                NSLog(@"输入员工旧密码");
                scanf("%s",pass);
                if ([dic[@"pass"] isEqualToString:passOC])
                {
                    char *pass2=malloc(30);
                    NSString *pass2OC=[NSString stringWithUTF8String:pass2];
                    NSLog(@"请输入新密码:");
                    scanf("%s",pass2);
                    char *pass3=malloc(30);
                    NSString *pass3OC=[NSString stringWithUTF8String:pass3];
                    NSLog(@"再次输入新密码:");
                    scanf("%s",pass3);
                    self.yPass=[NSString stringWithUTF8String:pass3];
                    if ([pass2OC isEqualToString:pass3OC])
                    {
                        //修改数组中该员工所在的字典
                        [dic setValue:self.yPass forKey:@"pass"];
                        //写入文件
                        [self.yArr writeToFile:YT atomically:YES];
                        NSLog(@"修改成功");
                    }
                    else
                    {
                        NSLog(@"两次输入不一致,请重新输入:");
                        [self GuanXiu];
                    }
                }
                else
                {
                    NSLog(@"旧密码输入有误，是否重新输入（y/n?）");
                    char yn='\0';
                    getchar();
                    scanf("%s",&yn);
                    if (yn=='y'||yn=='Y')
                    {
                        [self GuanXiu];
                    }
                    else
                    {
                        [self GuanLiYuanCaoZuoJieMian];
                    }
                }
            }
            else
            {
                   NSLog(@"员工账号不存在");
            }
        }
    }
    else
    {
        NSLog(@"没有员工信息");
    }
    [self GuanLiYuanCaoZuoJieMian];
}
-(void)ShanChu
{
    if ([self.fm fileExistsAtPath:YT]&&self.yArr.count>0)
    {
        char *name=malloc(30);
        NSLog(@"输入员工账号:");
        scanf("%s",name);
        for (NSMutableDictionary *dic in self.yArr)
        {
            if ([dic[@"name"] isEqualToString:[NSString stringWithUTF8String:name]])
            {
                [self.yArr removeObject:dic];
                [self.yArr writeToFile:YT atomically:YES];
                NSLog(@"员工删除成功");
                break;
            }
            else
            {
                NSLog(@"该员工不存在");
            }
        }
    }
    else
    {
        NSLog(@"没有员工信息");
    }
    [self GuanLiYuanCaoZuoJieMian];
}
-(void)YuanGongDengLu
{
    if ([self.fm fileExistsAtPath:YT]&&self.yArr.count>0)
    {
        char *name=malloc(30);
        char *pass=malloc(30);
        NSLog(@"输入账号：");
        scanf("%s",name);
        NSLog(@"输入密码:");
        scanf("%s",pass);
        NSString *passOC=[NSString stringWithUTF8String:pass];
        NSString *nameOC=[NSString stringWithUTF8String:name];
        for (NSMutableDictionary *dic in self.yArr)
        {
            if ([dic[@"name"] isEqualToString:nameOC]&&[dic[@"pass"] isEqualToString:passOC])
            {
                NSLog(@"登陆成功");
                //给群居员工账号，密码赋值
                self.yName=nameOC;
                self.yPass=passOC;
                [self YuanGongJieMian];
            }
            else
            {
                NSLog(@"员工账号不存在或密码错误");
                [self YuanGongDengLu];
            }
        }
    }
    else
    {
        NSLog(@"没有员工信息");
        [self welcome];
    }
}
-(void)YuanGongJieMian
{
    printf("~~~~~员工操作界面~~~~~\n");
    printf("~~~~~修改自身密码 1~~~~~\n");
    printf("~~~~~查看自身信息 2~~~~~\n");
    printf("~~~~~返回上一级 0~~~~~\n");
    printf("~~~~~~~~~~~~~~~~~~~~~\n");
    [self YGJMCZ];
}
-(void)YGJMCZ
{
    int a;
    scanf("%d",&a);
    switch (a)
    {
        case 1:
            //修改自身密码
            [self XiuGaiYGMM];
            break;
        case 2:
            //查看自身信息
            NSLog(@"当前信息:%s-%s",[self.yName UTF8String],[self.yPass UTF8String]);
            //再次显示员工操作界面
            [self YuanGongJieMian];
            break;
        case 0:
            [self welcome];
            break;
            
        default:
            printf("输入有误...\n");
            //[self employeeShow];
            break;
    }
}
-(void)XiuGaiYGMM
{
    NSLog(@"输入旧密码:");
    char *pass=malloc(30);
    scanf("%s",pass);
    if ([self.yPass isEqualToString:[NSString stringWithUTF8String:pass]])
    {
        NSLog(@"输入新密码:");
        char *pass2=malloc(30);
        scanf("%s",pass2);
        NSLog(@"再次输入新密码:");
        char *pass3=malloc(30);
        scanf("%s",pass3);
        if (strcmp(pass3, pass2)==0)
        {
            self.yPass=[NSString stringWithUTF8String:pass3];
            for (NSMutableDictionary *dic in self.yArr)
            {
                if ([dic[@"name"] isEqualToString:self.yName])
                {
                    [dic setValue:self.yPass forKey:@"pass"];
                    [self.yArr writeToFile:YT atomically:YES];
                    NSLog(@"修改成功");
                    [self YuanGongJieMian];
                    break;
                }
            }
        }
        else
        {
            NSLog(@"两次密码不一致");
            [self XiuGaiYGMM];
        }
    }
    else
    {
        NSLog(@"面膜输入有误");
        [self XiuGaiYGMM];
    }
}

@end
