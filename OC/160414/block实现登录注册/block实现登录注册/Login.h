//
//  Login.h
//  上午一，block
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Register.h"
//login是登录界面的意思
@interface Login : NSObject
@property(nonatomic,copy)NSString *userName,*userPw;//这两个都是对象
-(void)goToRegister:(Register *)regi;//第一次登陆还没注册，需要跳转到注册界面  regi是register类的对象
-(void)login;//把注册信息传回来
@end
