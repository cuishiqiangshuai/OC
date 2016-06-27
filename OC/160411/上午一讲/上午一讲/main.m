//
//  main.m
//  上午一讲
//
//  Created by qingyun on 16/4/11.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "TestClass.h"
#import "Teacher.h"
#define NAME @"name"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //KVC  基础语法
        NSDictionary *dic=[NSDictionary dictionaryWithObjectsAndKeys:@"xiaoming",@"name",@(21),@"age", nil];
        //要想添加新的健值对，必须是可变的
        NSMutableDictionary *mulDic1=[NSMutableDictionary dictionaryWithDictionary:dic];
        [mulDic1 setObject:@"男" forKey:@"sex"];
        //KVC赋值得方式 setValue：   forkey：
        [mulDic1 setValue:@"高新区" forKey:@"address"];
        NSLog(@"mulDic1:%@",mulDic1);
        //读取的方式的比较
        NSLog(@"%@,%@",[mulDic1 objectForKey:@"name"],[mulDic1 valueForKey:@"age"]);//前面的是字典的方式  后面的是KVC的方式
        //自定义的类的KVC写法
        Student *s1=[Student new];
        //以前的写法
        s1.name=@"小明";
        [s1 setAge:21];
        NSLog(@"s1=%@",s1);
        //KVC的写法
        [s1 setValue:@"小红" forKey:@"name"];//注意关键字必须是key，否则程序编译不报错，运行崩溃
        NSLog(@"s1=%@",s1);
        //读取的方式
        NSLog(@"age=%@",[s1 valueForKey:@"age"]);
        
        
        //KVC可以让字典对象转化为数据模型，模型相当于自定义类的对象
        //1.对应的健值为对相应的各个shuxing赋值
        s1.name=mulDic1[@"name"];
        s1.age=[mulDic1[@"age"] intValue];
        //快速赋值
        for (id key in mulDic1)
        {
            [s1 setValue:mulDic1[key] forKey:key];
        }
        NSLog(@"s1=%@",s1);
        
        //KVC的NB的地方
        //1.快速转为模型对象（就是比上面的方法更快）
        [s1 setValuesForKeysWithDictionary:mulDic1];
        NSLog(@"s1=>%@",s1);
        //2.可以自动拆箱数值
        [s1 setValue:@(18) forKey:@"age"];//这里是NSNumber类型，
        NSLog(@"age=%d",s1.age);//读取时自动转为int类型
        //3.可以访问私有属性和私有成员变量
        [s1 setValue:@"1603101" forKey:@"stuID"];
        [s1 setValue:@(98.5) forKey:@"_score"];
        NSLog(@"%@",[s1 valueForKey:@"score"]);
        NSLog(@"%@",[s1 valueForKey:@"stuID"]);
        //4.可以为只读属性赋值
        [s1 setValue:@"88881" forKey:@"telephone"];
        NSLog(@"s1=>%@",[s1 valueForKey:@"telephone"]);
        //5.不用确定对象的具体类型
        [TestClass showInfo:s1];
        Teacher *t1=[Teacher new];
        [t1 setValue:@"teacher  wang" forKey:@"name"];
        [t1 setValue:@(26) forKey:@"age"];
        [TestClass showInfo:t1];
        
        //健值路径
        BOOK *b1=[BOOK new];
        [s1 setBook:b1];
        s1.book.bookname=@"三国演义";//这里的book时是懒加载，意思就是没有调用就没有内存，只有被调用时它才会分配内存
        NSLog(@"%@",s1.book.bookname);
        [s1 setValue:@"罗贯中" forKeyPath:@"name"];
        [s1 setValue:@(99.9) forKeyPath:@"book.bookPrice"];
        NSLog(@"%@,%@,%@",[s1 valueForKeyPath:@"name"],[s1.book valueForKeyPath:@"bookname"],[s1.book valueForKeyPath:@"bookPrice"]);
        
        
        //KVC陷阱
        //1.
//        NSMutableDictionary *dic2=[NSMutableDictionary dictionaryWithDictionary:@{@"info":mulDic1,@"school":@"青云学院"}];
        NSDictionary *dic2=@{@"info":mulDic1,@"school":@"青云学院"};
        [dic2 setValue:@"qingyun" forKeyPath:@"info.name"];
        NSLog(@"%@",[dic2 valueForKeyPath:@"info.name"]);//一定要保证muldic1是可变的  dic2是不是没关系
       //过多的健值路径操作会为违背低耦合的程序设计原理，所以说，一定要尽量避免复杂层级的操作，
        //2.为了避免写错这些关键字，可以使用宏定义
        [s1 setValue:@"gaoli" forKeyPath:NAME];
        NSLog(@"%@",[s1 valueForKeyPath:NAME]);
        
         [s1 setValue:0 forKey:@"age"];//value必须是OC中的任意类型的对象
        
        
        //批处理 (意思就是成批的操作)
        //1.可以从对象中取出某些属性对应的健值对作为新的字典
        NSDictionary *madic=[s1 dictionaryWithValuesForKeys:@[@"name",@"age",@"sex"]];
        NSLog(@"%@",madic);
        //2.字典快速给模型赋值  s1相当于模型
        [s1 setValuesForKeysWithDictionary:mulDic1];
        NSLog(@"%@",s1);
        
        //整体操作（如果一个对象的某一个属性是数组，那么使用KVC的方式访问该属性的下一级健路径会访问数组中每一个对象的该建名）;
        Student *s2=[[Student alloc]initWithName:@"asdasd"];
        Student *s3=[[Student alloc]initWithName:@"asdasd"];
        Student *s4=[[Student alloc]initWithName:@"rgdfgd"];
        s1.names=[NSMutableArray arrayWithObjects:@[s1,s2,s3,s4], nil];//这个是先分配内存在初始化
        [s1.names addObjectsFromArray:@[s1,s2,s3,s4]];//这个是直接初始化，没有分配内存，所以就要有懒加载，在Student.m中写
        NSLog(@"%ld",s1.names.count);
        
        //快速运算符号（@count 计算总数，@avg 计算平均数,@sum 计算和,@min 计算最小值,@max计算最大值,@distinUnionOfObject 计算不重复的结果）
        //求名字数组的总个数
        NSLog(@"%@,%@",[s1 valueForKeyPath:@"names.@count"],[s1 valueForKeyPath:@"@count"]);
    }
    return 0;
}
