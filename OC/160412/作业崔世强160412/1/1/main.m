//
//  main.m
//  1
//
//  Created by qingyun on 16/4/12.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

void (^block1)(void)=^{
    NSLog(@"我要上王者");
};
void (^block2)(int,int)=^(int a,int b)
{
    NSLog(@"%d",a+b);
};
int (^block4)(void)=^int()
{
    NSLog(@"LOL");
    return 0;
};
int (^block3)(int,int)=^int(int a,int b)
{
    return a-b;
};
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        block1();
        block2(12,23);
        NSLog(@"%d",block3(12,3));
        return block4();
        
    }
    return 0;
}
