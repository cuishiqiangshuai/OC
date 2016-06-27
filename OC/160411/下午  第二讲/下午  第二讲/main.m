//
//  main.m
//  下午  第二讲
//
//  Created by qingyun on 16/4/11.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSArray *arr=@[@78,@58,@47,@89,@67];
//        //创建谓词
//        NSPredicate *pre1=[NSPredicate predicateWithFormat:@"SELF>60"];
        
        NSDictionary *dic1=@{@"name":@"xiaoming",@"age":@(23),@"birthday":[NSDate dateWithTimeIntervalSinceNow:-365*24*3600*18.5],@"salary":@(8000),};
        NSDictionary *dic2=@{@"name":@"xiaoli",@"age":@(21),@"birthday":[NSDate dateWithTimeIntervalSinceNow:-365*24*3600*21.5],@"salary":@(8000),};
        NSDictionary *dic3=@{@"name":@"hongjinbao",@"age":@(25),@"birthday":[NSDate dateWithTimeIntervalSinceNow:-365*24*3600*23.5],@"salary":@(10000),};
        Person *p1=[[Person alloc] initWithDic:dic1];
        Person *p2=[[Person alloc] initWithDic:dic2];
        Person *p3=[[Person alloc] initWithDic:dic3];
        NSArray *pArr=@[p1,p2,p3];
        //使用KVC求个数
        NSLog(@"%@",[pArr valueForKey:@"@count"]);
        //使用KVC求平均年龄
        NSLog(@"%@",[pArr valueForKeyPath:@"@avg.age"]);
        //使用KVC求最高工资
        NSLog(@"%@",[pArr valueForKeyPath:@"@avg.salary"]);
        //最早出生
        NSLog(@"%@",[pArr valueForKeyPath:@"@min.birthday"]);
        //工资和
        NSLog(@"%@",[pArr valueForKeyPath:@"@sum.salary"]);
        //计算不重复的结果
        NSLog(@"%@",[pArr valueForKeyPath:@"@distinctUnionOfObjects.salary"]);
        
        Student *s1=[[Student alloc] initWithScore:81.5];
        Student *s2=[[Student alloc] initWithScore:58.5];
        Student *s3=[[Student alloc] initWithScore:98.5];
        Student *s4=[[Student alloc] initWithScore:88.5];
        
        p1.friends=[NSMutableArray arrayWithArray:@[s1,s2]];
        p2.friends=[NSMutableArray arrayWithArray:@[s2,s3]];
        p3.friends=[NSMutableArray arrayWithArray:@[s2,s3,s4]];
        NSLog(@"总分数%@",[pArr valueForKeyPath:@"@sum.friends.@sum.score"]);
        NSLog(@"p1的分数%@,p2的分数%@,p3的分数%@",[p1 valueForKeyPath:@"friends.@sum.score"],[p2 valueForKeyPath:@"friends.@sum.score"],[p3 valueForKeyPath:@"friends.@sum.score"]);
    }
    return 0;
}
