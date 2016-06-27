//
//  QYMath.h
//  block 变量的用法
//
//  Created by qingyun on 16/4/12.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef int (^myBlock2)(int,int);
@interface QYMath : NSObject
@property(nonatomic,assign)int firstNum,secondNum;
@property(nonatomic,copy)int (^myBlock1)(void);
@property(nonatomic,copy)myBlock2 block2;
-(instancetype)initWithBlock:(myBlock2)blk;
@end
