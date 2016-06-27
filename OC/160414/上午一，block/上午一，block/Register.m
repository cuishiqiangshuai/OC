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
    [_delegate takeInfo:@{@"name":name,@"Pass":psWd}];//把名字和密码弄成字典传递给协议（就是委托代理）
}
@end
