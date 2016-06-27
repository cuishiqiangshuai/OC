//
//  main.m
//  多态+id类型
//
//  Created by qingyun on 16/4/13.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //OC中面对对象的特性：抽象，封装，多态，继承
        //多态：不同的类可以具有相同的方法名
        Person *p1=[Person new];
        [p1 setName:@"小明"];
        [p1 setAge:21];
        Dog *d1=[Dog new];
        [d1 setDname:@"哈士奇"];
        [d1 setPrice:1000];
        [p1 showInfo];
        [d1 showInfo];//这两个类都有showInfo这个方法，这就是简单的多态的意思
       // [p1 showDog];
        //p1,d1都是静态类型，编译时就加入内存，静态类型可以提高程序的效率
        
        
        //id类型是动态类型：在运行的才加入程序，在不涉及多态时，尽量减少id的使用
        id obj=p1;
        [obj showInfo];
        obj=d1;
        [obj showInfo];
        
        Student *s1=[Student new];
        [s1 setName:@"xiaoli"];
        obj=s1;
        [obj showStudent];
        [obj showDog];//编译时通过，运行时才检查该对象的具体类型，因为不确定id具体是谁 ，所以需要判断一下
        //obj能否相应(showDog)方法
        if ([obj respondsToSelector:@selector(showDog)])
             {
                 NSLog(@"YES");
                 [obj performSelector:@selector(showDog)];//等同于[obj showDog]
        }
        else
        {
            NSLog(@"obj 不能响应showDog这个方法");
        }
        //对象XXX是否是某类或父类创建的对象
        if ([s1 isKindOfClass:[Person class]])
        {
            NSLog(@"s1 isKindOfClass:[Person class]");
        }
        else{
            NSLog(@"s1 is  not KindOfClass:[Person class]");
        }
        //对象XXX是否是某个具体类创建的对象
        if ([s1 isMemberOfClass:[Person class]])
        {
            NSLog(@"s1 isMemberOfClass:[Person class]");
        }
        else
        {
            NSLog(@"s1 is not MemberOfClass:[Person class]");
        }
        //某类XXX 是否是某个类的子类
        if ([Student isSubclassOfClass:[Person class]])
        {
            NSLog(@"[Student isSubclassOfClass:[Person class]");
        }
        else
        {
            NSLog(@"[Student is not SubclassOfClass:[Person class]");
        }
        //
        if (![Student instancesRespondToSelector:@selector(showClass)])
        {
            NSLog(@"子类能相应父类的类方法");
            [Student showClass];
        }
        else
        {
            NSLog(@"子类不可以相应父类的类方法");
        }
        
        
        //异常捕获机制
        @try {
            //可能有问题的代码块
            [s1 showStudent];
            [obj showDog];
        }
        @catch (NSException *exception) {
            //如果有异常，则打印异常
            NSLog(@"%@,%@",[exception name],[exception reason]);
        }
        @finally {
            //正常运行的代码块
            NSLog(@"正常运行的代码块....");
        }
    }
    return 0;
}
