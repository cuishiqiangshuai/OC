//
//  Register.m
//  上午一，block
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Register.h"

@implementation Register
-(void)registerWithName:(NSString *)name andPass:(NSString *)psWd
{
//    _block=^(NSString *uName,NSString *uPW){
//      //使用代码块将注册的用户名和密码保存到代码块
//        uName=name;
//        uPW=psWd;
//    };
    //直接调用代码块
   _block(name,psWd);
}

@end
