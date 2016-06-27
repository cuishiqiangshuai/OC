//
//  main.m
//  强引用
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str1=[[NSString alloc]initWithFormat:@"hello"];
        NSLog(@"str1=%p",str1);
        NSString *str2=str1;
        NSLog(@"str1=%p,str2=%p",str1,str2);
        str1=[[NSString alloc]initWithFormat:@"qingyun"];
        NSLog(@"str1=%p,str2=%p",str1,str2);
        NSString *str3=str1;
        NSLog(@"str1=%p,str2=%p,str3=%p",str1,str2,str3);
        str2=str3;
        NSLog(@"str1=%p,str2=%p,str3=%p",str1,str2,str3);
        
        //强引用
        {
            __strong Dog *d1=[Dog new];
            [d1 setName:@"dog-1"];
        }//大括号表示代码块，__strong是默认的  所以可以省略  d1一出这个代码块就会被释放，就不存在了
        Dog *d2=nil;
        {
            Dog *d3=[Dog new];
            d3.name=@"dog-2";
            d2=d3;
            NSLog(@"d2=%p,d3=%p",d2,d3);
        }
        NSLog(@"d2=%p",d2);//上面这个例子 是两个强引用指向同一块内存，d3释放了，因为d2创建时在大括号外面所以他的程序还没走完，所以他的内存没有被释放
        {
            NSString* _myStr=@"qingyun-1";
            NSLog(@"mystr==%p",_myStr);
        }//这个例子中  mystr是字符串常量，他存储在常量区，程序结束是才释放。但是他同时也是局部变量，出代码块也应该被释放，所以这种情况下不能缺定他是否被释放
        
        Dog *d4=[Dog new];
        [d4 setName:@"dog-4"];
        Dog *d5=[Dog new];
        [d5 setName:@"dog-5"];
        Dog *d6=nil;
        d4=d6;
        d5=d4;//这几句代码说明在关系比较复杂的情况下，很容易不小心释放自己不想释放的对象，所以应该尽量避免出现这种情况
        
        {
            Dog *d7=[Dog new];
            d7.name=@"dog-7";
            Dog *d8=[Dog new];
            [d8 setName:@"dog-8"];
            
            [d7 setFriend:d8];
            [d8 setFriend:d7];
        }//这个例子是两个对象相互强引用，导致两个对象都无法释放，而把friend改为弱引用就可以解决这个问题
        {
            Dog *d9=[Dog new];
            [d9 setName:@"dog-9"];
            [d9 setFriend:d9];
        }//上面差不多，只不过是自身引用自身
        //__weak 弱引用  会将对象自动设置为nil
        __weak Dog *d10=[Dog new];//一创建就会释放，自动置为nil
        [d10 setName:@"dog-10"];
        __weak Dog *d11=nil;
        {
            Dog *d12=[Dog new];
            [d12 setName:@"dog-12"];
            d11=d12;//弱引用一般依赖与强引用，他局可以想强引用一样发送消息
        }
        NSLog(@"d11===%p",d11);//给nil发送任何消息都是可以的，只不过没什么效果
        
        //不安全弱引用 __unsafe_unretained  不会讲对象设置为nil    在以后编程中尽量不使用
        __unsafe_unretained Dog *d13=nil;
        {
            Dog *d14=[Dog new];
            [d14 setName:@"dog-14"];
            d13=d14;
            d11=d14;
        }
        NSLog(@"d13=====%p",d13);
        //总的来说   有强引用和弱引用就够了  不用不安全弱引用
        
        //自动释放
        @autoreleasepool {
            Dog *d15=[Dog sharedDog];
            [d15 setName:@"dog-15"];
            Dog *d16=[Dog dogWithName:@"dog-16"];
            {
                __autoreleasing Dog *d17=[Dog new];//一般来说放在类方法中，可以省略
                [d17 setName:@"dog-17"];
            }
        }
        
        struct Student
        {
            //NSString *name//C的结构体里面不能直接写OC的属性
            CFStringRef cfString;
            int age;
        }stu1;
        NSString *myName=@"qingyun";
        stu1.cfString=(__bridge CFStringRef)myName;
        NSLog(@"%@",stu1.cfString);
        
        id obj;//OC任意类型的对象
        void * p;//C的任意类型指针
        //可以相互转化，但需要桥接
        obj=(__bridge id)(p);
        p=(__bridge void *)(obj);
     }
    return 0;
}
