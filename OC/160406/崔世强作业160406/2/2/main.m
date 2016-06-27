//
//  main.m
//  2
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boy.h"
#import "Girl.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Girl *g1=[Girl new];
        [g1 setAge:30];
        [g1 setName:@"xiaomin"];
        //[g1 dealloc];
        //[g1 release];
        //[g1 dealloc];
        
        Boy *b1=[Boy new];
        [b1 setAge:18];
        [b1 setName:@"haha"];
        NSLog(@"%@",g1);
        [b1 setBoygirl:g1];
        //[b1 dealloc];
        [b1 playboyInfo];
        
    }
    return 0;
}
