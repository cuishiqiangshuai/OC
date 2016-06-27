//
//  Login.m
//  上午一，block
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Login.h"

@implementation Login
-(void)goToRegister:(Register *)regi
{
    NSLog(@"首次进入APP，先去注册....");
    regi.block=^(NSString *pName,NSString *pWD){
        _userName=pName;
        _userPw=pWD;//赋值加实现
    };
}

-(void)login
{
    if (_userName&&_userPw)
    {
        NSLog(@"登陆成功....%@,%@",_userName,_userPw);
    }
    else
    {
        NSLog(@"用户不存在或密码错误....");
    }
    
}
@end
