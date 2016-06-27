//
//  TsestClass.m
//  san
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "TsestClass.h"

@implementation TsestClass
-(instancetype)init
{
    //如果在代码块内需要使用对象本身，需要将对象改为弱引用指针，避免自身循环引用造成内存泄漏
   // __weak TsestClass *tmpTc=self;
    __weak typeof (self) tmpTc=self;//两种方法是一样的，第二种会避免在继承中使用block出问题
    if (self=[super init])
    {
        _block=^{
            NSLog(@"self=%@",tmpTc);
            
        };
    }
    NSLog(@"%p",_block);//打印block的地址
    return self;
}
@end
