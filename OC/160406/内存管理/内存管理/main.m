//
//  main.m
//  内存管理
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
//MRC是手动管理内存   ARC是自动管理内存
int main(int argc, const char * argv[]) {
    {
        //注意：在ARC中无法使用release,retain,retainCount,因为他是自动释放
        //NSString的引用计数
        NSString *str1=@"hello";
        NSLog(@"str1%ld",str1.retainCount);//因为str1指向的是常量区，它的引用计数例外，retain和release对他都不起作用
        //  [str1 retain];//+1
        //   NSLog(@"str1==%ld",str1.retainCount);
        NSString *str2=[NSString stringWithFormat:@"%@",@"test"];
        NSLog(@"str2:%ld",[str2 retainCount]);
        NSString *str3=[NSString stringWithString:[NSString stringWithFormat:@"test %d",12]];
        NSLog(@"str3:%ld",str3.retainCount);
        NSString *str4=[[NSString alloc]initWithCString:"hello" encoding:NSUTF8StringEncoding];
        NSLog(@"str4==%ld",str4.retainCount);
        NSString *str5=[[NSString alloc]initWithFormat:@"test %d %s",23,"qingyun"];
        NSLog(@"str5=%ld",str5.retainCount);
        NSString *str6=[[NSString alloc]initWithString:@"hello"];
        NSLog(@"str6=%ld",str6.retainCount);
        //当alloc copy new 创建的对象，需要手动释放 ****注意 这句话
        [str4 release];//0
        [str6 release];//0
        //为了彻底释放
        str4=nil;
        str6=nil;
        NSLog(@"str==%ld,%ld,%ld",str4.retainCount,str5.retainCount,str6.retainCount);//MRC中引用计数为0是最好不要在使用
        [str5 retain];//2
        NSLog(@"str5=%ld",str5.retainCount);
        [str5 release];//对应开始的alloc
        [str5 release];//对应retain的一次
        str5=nil;
        NSLog(@"str5=%ld",str5.retainCount);
        
        //NSValue,NSNumber
        NSValue *pValue=[NSValue valueWithPoint:NSMakePoint(12, 21)];
        NSLog(@"%ld",pValue.retainCount);
        NSNumber *iNUm=[NSNumber numberWithFloat:23.3];
        NSLog(@"%ld",iNUm.retainCount);
        [iNUm release];
        
        //NSArray
        NSMutableArray *arr1=[[NSMutableArray alloc]initWithObjects:@"hello",@"qingyun", nil];
        NSLog(@"arr1==%ld",arr1.retainCount);
        [arr1 addObject:@"ios"];
        NSLog(@"arr1==%ld",arr1.retainCount);//add只是增加元素的个数
        [arr1 release];
        NSLog(@"arr1=====%ld",arr1.retainCount);
        //NSDictionary
        NSMutableDictionary *dic=[NSMutableDictionary dictionaryWithObjectsAndKeys:@"qingyun",@"name",@"河南",@"address", nil];
        NSLog(@"dic===%ld",dic.retainCount);
        [dic setObject:@"53" forKey:@"hourse"];
        NSLog(@"dic===%ld",dic.retainCount);
        //[dic release]//dic 是类方法创建的对象，不用手动释放
        for (int i=0; i<10; i++)
        {
            NSLog(@"%ld,%d",dic.retainCount,i);
        }
        
        //总结：
        //1.当alloc copy new 创建的对象，需要手动释放
        //2.retainCount有时候会欺骗你的眼睛（NSString），但是Analyze绝对不会出错
        //3.retain和release是成对出现的
        //4.类方法创建的对象是系统自动管理的
    }
    return 0;
}
