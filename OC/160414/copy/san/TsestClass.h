//
//  TsestClass.h
//  san
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TsestClass : NSObject
//将一个block作为参数
//copy会将代码块从栈区拷贝到堆区，防止在使用时被释放掉
@property(nonatomic,copy)void (^block)(void);
@end
