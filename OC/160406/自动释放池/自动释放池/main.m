//
//  main.m
//  自动释放池
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSValue *pValue=[NSValue valueWithPoint:NSMakePoint(9, 9)];
        NSLog(@"%@,%ld",pValue,pValue.retainCount);
        NSNumber *iNum=[NSNumber numberWithInt:2];
        [iNum release];//0
        
        NSNumber *dNum=[NSNumber numberWithDouble:23.232];
        NSLog(@"%ld",dNum.retainCount);//1
        [dNum autorelease];//autorelease意思就是程序结束的时候自动的给该对象发送一条release操作
        NSLog(@"%ld",dNum.retainCount);//1->autorelease并不会立即让引用计数-1
        NSNumber *fNum=[[[NSNumber alloc]initWithFloat:321.2] autorelease];//这种方式也可以
        NSLog(@"%ld",fNum.retainCount);//1
        //MRC中，如果对象的引用计数为1并且该对象已经加入自动释放池，则不需要再加release
        //[fNum release];
        @autoreleasepool {
            NSArray *arr=[NSArray arrayWithObjects:@"1",@"2",nil];
            NSLog(@">>%ld",arr.retainCount);//1对象的引用计数会加入最近的自动释放池
        }
    }
    //自己写释放池
    NSAutoreleasePool *pool=[NSAutoreleasePool new];
    NSDictionary *dic=[NSDictionary dictionaryWithObjectsAndKeys:@"qingyun",@"name",@"21",@"age", nil];
    NSLog(@"%ld",dic.retainCount);
    [pool drain];//等同于[pool release];
    
    
    @autoreleasepool {
        Person *p1=[Person new];
        [p1 setAge:10];
        [p1 release];
        Person *p2=[Person new];
        [p2 setAge:11];
        [p2 autorelease];
        Person *p3=[Person new];
        [p3 setAge:12];
        [p3 release];
        @autoreleasepool {
            Person *p4=[Person new];
            [p4 setAge:13];
            [p4 autorelease];
            @autoreleasepool {
                Student *s1=[Student new];
                [s1 setAge:20];
                [s1 autorelease];
                Student *s2=[Student new];
                [s2 setAge:21];
                [s2 release];
            }
        }
    }
        @autoreleasepool {
            Person *p0=[Person new];
            NSLog(@"p0==%ld",p0.retainCount);
            [p0 setAge:100];
            [p0 setPerson:[Person new]];
            NSLog(@"p0===%ld",p0.retainCount);
            [p0 release];
        
    }
    return 0;
}
