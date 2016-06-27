//
//  main.m
//  1
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool{
        NSMutableString *a3=[NSMutableString stringWithCapacity:1000];
        [a3 setString:@"you"];
        NSLog(@"===%ld",a3.retainCount);
        a3=[[NSMutableString alloc]initWithFormat:@"bring"];
        [a3 retain];
        NSLog(@"%ld",a3.retainCount);
        [a3 release];
        NSLog(@"%@被释放了",a3);
        [a3 autorelease];
        
        NSMutableString *a4=[NSMutableString stringWithCapacity:100];
        [a4 setString:@"beauty"];
        NSLog(@"%ld",a4.retainCount);
        [a4 release];
        NSLog(@"%@被释放了",a4);
         }
    return 0;
}
