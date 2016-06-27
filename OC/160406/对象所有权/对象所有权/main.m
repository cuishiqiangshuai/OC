//
//  main.m
//  对象所有权
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Car.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSSet *set1=[NSSet new];//2  特殊情况 虽然是2 但是还是释放一次就行了
        NSLog(@"set1==%ld",set1.retainCount);
        [set1 release];
        NSLog(@"set=%ld",set1.retainCount);
        for (int i=0; i<10; i++)
        {
            NSLog(@"set=%ld,%d",set1.retainCount,i);
        }
        Person *p1=[Person new];
        NSLog(@"p1==%ld",p1.retainCount);
        [p1 setName:@"xiaoming"];
        NSLog(@"p1--%ld",p1.retainCount);
        [p1 release];//-->会自动调用本类的dealloc方法
        p1=nil;
        
        Student *s1=[Student new];
        [s1 setName:@"xiaoli"];
        [s1 setStuID:@"1603101"];
        [s1 release];
        
        NSString *str1=@"hello";
        NSString *myStr=[str1 copy];
        NSLog(@"myStr=%ld",myStr.retainCount);
        [myStr release];
        
        
        Car *c1=[Car new];
        [c1 setCarName:@"劳斯莱斯幻影"];
        [c1 setCarPrice:1020000];
        Tire *t1=[Tire new];
        [t1 setTireName:@"米其林"];
        [t1 setTireRadius:302];
        //复合
        [c1 setCarTire:t1];//Car拥有Tire的属性
        NSLog(@"%@",t1);
        [c1 showCarInfo];
        [t1 release];
        [c1 showCarInfo];//t1已经被释放  程序可能崩溃
        
        Tire *t2=[Tire new];
        [t2 setTireName:@"玛吉斯"];
        [t2 setTireRadius:200];
        //复合
        [c1 setCarTire:t2];//t1坏了，换t2
        [c1 setCarTire:t2];//两个相同的t2
        [t2 release];
        [c1 release];
    }
    return 0;
}
