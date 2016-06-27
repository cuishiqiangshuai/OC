//
//  main.m
//  崔世强作业160405
//
//  Created by qingyun on 16/4/5.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a1=1;
        float a2=2.2;
        double a3=2.22;
        char a4='0';
        BOOL a5=NO;
        NSNumber *iNum=[NSNumber numberWithInt:a1];
        NSNumber *fNum=[NSNumber numberWithFloat:a2];
        NSNumber *dNum=[NSNumber numberWithDouble:a3];
        NSNumber *cNum=[NSNumber numberWithChar:a4];
        NSNumber *bNum=[NSNumber numberWithBool:a5];
        NSArray *a=[[NSArray alloc]initWithObjects:@"iNum",@"fNum",@"dNum",@"cNum",@"bNum", nil];
        for (int i=0; i<a.count;i++)
        {
            NSLog(@"%@",[a objectAtIndex:i]);
        }
    }
    return 0;
}
