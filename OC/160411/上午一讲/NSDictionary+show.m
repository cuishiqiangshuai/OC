//
//  NSDictionary+show.m
//  上午一讲
//
//  Created by qingyun on 16/4/11.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "NSDictionary+show.h"

@implementation NSDictionary (show)
-(NSString *)description//这个重写方法是针对字符串和对象的
{
    return @"hello";
}
//这个重写方法是针对集合的  比如字典..
-(NSString *)descriptionWithLocale:(id)locale
{
    //我们为了让字典的键值对打印的是汉字，
    //首先建一个字符串用来接收字典打印的值
    NSMutableString *mulstring=[NSMutableString string];
    //拼接
    [mulstring appendFormat:@"{\n"];//因为是一个字典，第一行肯定是{
    //遍历传过来的字典
    for (id key in self)//这里的self指的是对象字典
    {
        [mulstring appendFormat:@"\t%@ = %@\n;",key,[self objectForKey:key]];//\t是一个符号占四个位置 这样就可以和打印出来的字典的值得位置一样
    }
    return mulstring;
    //这就是类别的使用之处
}
@end
