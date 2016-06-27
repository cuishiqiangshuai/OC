//
//  Register.h
//  上午一，block
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
//register是注册界面的意思
@interface Register : NSObject
@property(copy,nonatomic)void (^block)(NSString*,NSString*);//block代码块
-(void)registerWithName:(NSString *)name andPass:(NSString *)psWd;//注册的方法 名字和密码
@end
