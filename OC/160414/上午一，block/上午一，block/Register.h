//
//  Register.h
//  上午一，block
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChransferDelegate.h"
//register是注册界面的意思
@interface Register : NSObject<ChransferDelegate>
@property(nonatomic,assign)id<ChransferDelegate>delegate;//协议属性
-(void)registerWithName:(NSString *)name andPass:(NSString *)psWd;//注册的方法 名字和密码
@end
