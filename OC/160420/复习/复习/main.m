//
//  main.m
//  复习
//
//  Created by qingyun on 16/4/20.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

void test()
{
    NSRange rg=NSMakeRange(3,5);//常用这种方式定义
    NSLog(@"rg=%@",NSStringFromRange(rg));//注意不能直接NSLog(@"rg=%@",rg) 因为rg不是对象，而是结构体  %@是指针
}

//字符串操作
void test1()
{
    char *str1="C string";//这是C创建字符串的方式
    NSString *str2=@"OC string";//OC字符串需要加@，并且这种方式创建的对象不需要自己释放内存
    //下面的创建方法都应该释放内存
    NSString *str3=[[NSString alloc] init];
    str3=@"OC string";
    NSString *str4=[[NSString alloc] initWithFormat:@"age is %i,name is %.2f",19,1.72f];
    NSString *str5=[[NSString alloc] initWithUTF8String:"C string"];//将c的字符串转化为我OC的字符串
    //NSString *str6=[[NSString alloc] initWithString:@"sadfsgf"];
    //以上方法都有对应类方法，不需要管理内存（有系统自动释放）
   // NSString *str7=[NSString stringWithString:@"OC string"];
}

void test2()
{
    NSLog(@"\"Hello world!\" to upper is %@",[@"Hello world!" uppercaseString]);//大写
    NSLog(@"\"Hello world\" to upper is %@",[@"Hello world!" lowercaseString]);//小写
    NSLog(@"\"Hello world\" to upper is %@",[@"Hello world!" capitalizedString]);//首字母大写，其他小写
    
    
    
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *date1=[NSDate date];//获取当前日期
        NSLog(@"%@",date1);
        NSDate *date2=[NSDate dateWithTimeIntervalSinceNow:100];//当前日期的基础上加上100秒，注意在ObjC中多数时间单位都是秒
        NSLog(@"%@",date2);
        NSDate *date3=[NSDate distantFuture];//随机获取一个将来的日期
        NSLog(@"%@",date3);
        NSTimeInterval time=[date2 timeIntervalSinceDate:date1];//日期之差，返回单位为秒
        NSLog(@"%f",time);
        NSDate *date4=[date1 earlierDate:date3];//打印比较早的日期
        NSLog(@"%@",date4);
        //字符串转化为日期格式
        NSDateFormatter *formater1=[[NSDateFormatter alloc] init];
        [formater1 setDateFormat:@"yy-MM-dd HH:mm:ss"];
        NSString *datestr1=[formater1 stringFromDate:date1];
        NSLog(@"%@",datestr1);
        //日期格式转化为字符串
        NSDate *date5=[formater1 dateFromString:@"14-02-14 11:07:16"];
        NSLog(@"%@",date5);
        
        
        //字符串的比较
        BOOL result=[@"abc" isEqualToString:@"aBc"];
        NSLog(@"%hhd",result);
        NSComparisonResult result2=[@"abc" compare:@"aBc"];//如果是[@"abc" caseInsensitiveCompare:@"aBc"]则是忽略大小写比较
        if (result2==NSOrderedAscending)//=-1由小到大顺序
        {
            NSLog(@"left<right.");
        }
        else if (result2==NSOrderedDescending)//=+1由大到小顺序
        {
            NSLog(@"left>right.");
        }
        else if (result2==NSOrderedSame)//=0 一样
        {
            NSLog(@"left=right.");
        }//结果是left>right.
        
     
        
        //字符串的包含
        NSLog(@"has prefix ab? %i",[@"abcdef" hasPrefix:@"ab"]);//YES
        NSLog(@"has suffix ab? %i",[@"abcdef" hasSuffix:@"ef"]);
        //上面这两句代码的意思是检查是否包含指定的前缀（hasPrefix）和后缀（hasSuffix）
        
        NSRange range=[@"abcdefabcdef" rangeOfString:@"cde"];//注意如果遇到cde则不再往后面搜索，如果从后面搜索或其他搜索方式可以设置的第二个options参数
        if (range.location==NSNotFound)
        {
            NSLog(@"not found.");
        }
        else
        {
            NSLog(@"range is %@",NSStringFromRange(range));
        }//结果是range is {2,3}; 这一段代码的是先截取了cde这段代码，然后在判断这段代码的范围，
        
        
        //字符串的分割
        NSLog(@"%@",[@"abcdef" substringFromIndex:3]);//从3开始截取到最后一位
        NSLog(@"%@",[@"abcdef" substringToIndex:3]);//从0开始截取到3
        NSLog(@"%@",[@"abcdef" substringWithRange:NSMakeRange(2, 3)]);//从下标2开始截取3个字符
        
        NSString *str=@"12.abcd.3a";
        NSArray *arr1=[str componentsSeparatedByString:@"."];
        NSLog(@"%@",arr1);//字符串从'.'分割
        
        
        
        NSLog(@"%i",[@"12" intValue]);//类型转换 结果：12
        NSLog(@"%zi",[@"hello world,世界你好！" length]);//字符串长度注意不是字节数  结果：17
        NSLog(@"%c",[@"abc" characterAtIndex:0]);//取出制定位置的字符  结果：a
        const char *s=[@"abc" UTF8String];//转换为C语言字符串
        NSLog(@"%s",s);//结果：abc
    }
    return 0;
}
