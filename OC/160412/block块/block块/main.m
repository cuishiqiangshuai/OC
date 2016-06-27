//
//  main.m
//  block块
//
//  Created by qingyun on 16/4/16.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
void(^block1)(void);
void (^block2)()=^{
    NSLog(@"无参数无返回值的block....");
};//block中，返回值和参数是void时 可以省略...
void (^block3)(int,int)=^(int a,int b)
{
    NSLog(@"带参数无干绘制的block...%d",a+b);
};//无返回值有参数的block
int(^block4)(int,int)=^(int a,int b)
{
    NSLog(@"有参数有返回值...");
    return a+b;
};

//在C函数中使用block
void test1(int x,int y)
{
    int (^block5)(int,int)=^int(int a,int b)
    {
        return a+b;
    };
    NSLog(@"%d",block5(x,y));
}
//给block取别名
typedef int(^myblock) (int,int);//myblock是一个block类型，不是变量，用的时候需要先声明一个变量。
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //^托字符，表示block的标志！
        //调用
        block1();
        block2();
        block3(12,21);
        NSLog(@"%d",block4(21,34));
              
        test1(100, 99);
        //给block取别名
        myblock result=^int(int a,int b)
        {
            block1();
            return a*b;
        };
        //使用
        NSLog(@"%d",result(88,11));
        
        //内联使用：将block当做参数使用
        NSArray *myArr=@[@100,@78,@86,@88,@67];
        NSLog(@"排序前：%@",myArr);
        NSArray *newArr=[myArr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
            return [obj1 compare:obj2];
        }];
        NSLog(@"%@",newArr);
        
    }
    return 0;
}

//实现
void (^block1)(void)=^void(void)
{
    NSLog(@"这是个无参数无返回值的block");
};
