//
//  main.m
//  san
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TsestClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //block 理解为一个匿名函数，它的本质就是对函数指针的封装，它的生命周期跟函数一样，因此把block描述为属性时，我们都会用copy，把它从栈拷贝到堆区，这样就不会出现调用时被释放掉的悲剧了
        
        //block的内存管理
        //通常用copy，但是在关系到循环引用时需要弱引用
        
        TsestClass *tc=[[TsestClass alloc] init];
        NSLog(@"tc=%@",tc);
        NSLog(@"block=%@",tc.block);
    }
    return 0;
}
