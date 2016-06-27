//
//  main.m
//  1111
//
//  Created by qingyun on 16/4/5.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSNumber  封装基本数据类型
        int a1=11;
        float a2=21.2;
        double a3=21.2121;
        char a4='d';
        BOOL a5=YES;
        //装箱
        NSNumber *iNum=[NSNumber numberWithInt:a1];
        NSNumber *fNum=[NSNumber numberWithFloat:a2];
        NSNumber *dNum=[NSNumber numberWithDouble:a3];
        NSNumber *cNum=[NSNumber numberWithChar:a4];
        NSNumber *bNum=[NSNumber numberWithBool:a5];
        NSLog(@"%@,%@,%@,%@,%@",iNum,fNum,dNum,cNum,bNum);
        //拆箱
        NSLog(@"%d,%g,%g,%c,%d",[iNum intValue],[fNum floatValue],[dNum doubleValue],[cNum charValue],[bNum boolValue]);
        long long l1=1243512345456;
        //装箱
        NSNumber *llNum=[NSNumber numberWithLongLong:l1];
        NSLog(@"%@,%lld",llNum,[llNum longLongValue]);
        //总结
        //基本数据类型的封装交给NSNumber，其它数据类型交给NSNalue
    }
    return 0;
}
