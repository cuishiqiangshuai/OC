//
//  main.m
//  2
//
//  Created by qingyun on 16/4/12.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wangzhe.h"

int LOL=1000;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //第一种变量：局部变量
        int a1=110;
        void (^block1)()=^{
            //a1=110;//不可改变,而且程序每次进入这个代码块a1的值都是110；
            NSLog(@"a1=%d",a1);
        };
        block1();//程序先走这里，再走上面的block块
        NSLog(@"a1==%d",a1);
        //第二种：静态局部变量
        static int a2=120;
        void (^block2)()=^{
            a2=130;
            NSLog(@"a2=%d",a2);
        };
        NSLog(@"a2==%d",a2);//120,是因为还没进代码块，只有遇到下面的block调用才会进上面代码块
        block2();//130 可以改变
        NSLog(@"a2===%d",a2);//放在这里就是130
        //第三种：全局变量
        void (^block3)()=^{
            LOL=1001;
            NSLog(@"lol=%d",LOL);
        };
        NSLog(@"LOL==%d",LOL);
        block3();
        NSLog(@"LOL===%d",LOL);//和静态局部变量一样
        
        //类的成员变量
        Wangzhe *l1=[[Wangzhe alloc] init];
        l1.block4(12,23);
        Wangzhe *l2=[[Wangzhe alloc] initWithBlock:^int(int a,int b) {
            return a*b;
        }];
        NSLog(@"block5:%d",l2.block5(100,100));
    }
    return 0;
}
