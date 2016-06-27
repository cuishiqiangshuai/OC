//
//  main.m
//  3
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lion.h"
#import "Platypus.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Lion *l1=[[Lion alloc] init];
        Platypus *p1=[[Platypus alloc] init];
        [l1 setName:@"狮子"];
        [l1 breed];
        [l1 eating];
        [p1 setName:@"鸭嘴兽"];
        [p1 breed];
        [p1 eating];
    }
    return 0;
}
