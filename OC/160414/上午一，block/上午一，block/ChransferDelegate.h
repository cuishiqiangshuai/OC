//
//  ChransferDelegate.h
//  上午一，block
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChransferDelegate <NSObject>//这是个协议
@optional//协议的关键字
-(void)takeInfo:(NSDictionary *)dict;//这个协议是封装成一个字典传递给Login的方法
@end
