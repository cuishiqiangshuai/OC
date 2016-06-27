//
//  main.m
//  4
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "kecheng.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        kecheng *k1=[[kecheng alloc] init];
        [k1 setName:@"英语"];
        [k1 setFenshu:100];
        [k1 xianshi];
        
        kecheng *k2=[k1 copy];
        [k2 setName:@"huaxue"];
        [k2 setFenshu:99];
        [k2 xianshi];
    }
    return 0;
}
