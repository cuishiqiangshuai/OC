//
//  main.m
//  上午一
//
//  Created by qingyun on 16/4/12.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //正则表达式
        //.表示任意一个字符
        NSPredicate *pre1=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"."];
        if ([pre1 evaluateWithObject:@"w"])
        {
            NSLog(@"符合...");
        }
        else{
            NSLog(@"不符合...");
        }
        //[]限定字符的范围
        NSPredicate *pre2=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"[Aa-z]"];
        if ([pre2 evaluateWithObject:@"A"])
        {
            NSLog(@">符合...");
        }
        else
        {
            NSLog(@">不符合....");
        }
        //  \d  [0-9]限定只是数字的范围
        NSPredicate *pre3=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"\\d"];
        if ([pre3 evaluateWithObject:@"1324"])
        {
            NSLog(@">>符合");
        }
        else{
            NSLog(@">>不符合");
        }
        //  \D  [^0-9]  不是数字
        NSPredicate *pre4=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"\\D"];
        if ([pre4 evaluateWithObject:@"="])
        {
            NSLog(@">>>符合");
        }
        else{
            NSLog(@">>>不符合");
        }
        //  \s 所有不可见的字符 比如（\r \n \t）
        NSPredicate *pre5=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"\\s"];
        if ([pre5 evaluateWithObject:@" "])
        {
            NSLog(@">>>>符合");
        }
        else{
            NSLog(@">>>>不符合");
        }
        //  \S  所有可见的字符
        NSPredicate *pre6=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"\\S"];
        if ([pre6 evaluateWithObject:@"a"])
        {
            NSLog(@">>>>>符合");
        }
        else{
            NSLog(@">>>>>不符合");
        }
        //  \w [0-9a-zA-Z_]  字母数字或下划线中的任意一个字符
        NSPredicate *pre7=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"\\w"];
        if ([pre7 evaluateWithObject:@"_"])
        {
            NSLog(@">>》符合");
        }
        else{
            NSLog(@">>》不符合");
        }
        //  \W 非数字字母或下划线的任意一个字符
        NSPredicate *pre8=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"\\W"];
        if ([pre8 evaluateWithObject:@"."])
        {
            NSLog(@">>>>>>符合");
        }
        else{
            NSLog(@">>>>>>不符合");
        }
        
        //次数
        //1.?表示最多出现一次
        NSPredicate *pre9=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"\\W?"];
        if ([pre9 evaluateWithObject:@".."])
        {
            NSLog(@"9>>符合");
        }
        else{
            NSLog(@"9>>不符合");
        }
        //2.+表示最少出现一次
        NSPredicate *pre10=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"\\W+"];
        if ([pre10 evaluateWithObject:@"..."])
        {
            NSLog(@"10>>符合");
        }
        else{
            NSLog(@"10>>不符合");
        }
        //3.*表示出现任意次数
        NSPredicate *pre11=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"\\W*"];
        if ([pre11 evaluateWithObject:@"////"])
        {
            NSLog(@"11>>符合");
        }
        else{
            NSLog(@"11>>不符合");
        }
        //4.可以指定次数{n}
        NSPredicate *pre12=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"\\d{4}"];//数字出现4次
        if ([pre12 evaluateWithObject:@"13242"])
        {
            NSLog(@"12>>符合");
        }
        else{
            NSLog(@"12>>不符合");
        }
        //至少出现n次 {n,}
        NSPredicate *pre13=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"\\d{4,}"];
        if ([pre13 evaluateWithObject:@"12"])
        {
            NSLog(@"13>>符合");
        }
        else{
            NSLog(@"13>>不符合");
        }
        //出现m-n次 {m,n}
        NSPredicate *pre14=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"\\d{4,8}"];
        if ([pre14 evaluateWithObject:@"13241234"])
        {
            NSLog(@"14>>符合");
        }
        else{
            NSLog(@"14>>不符合");
        }
        //^表示开始$表示结束 （）表示一个整体 |表示选择
        //身份证正则表达式
        NSPredicate *pre15=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"\\d{17}[X0-9]"];
        if ([pre15 evaluateWithObject:@"13241231123412312X"])
        {
            NSLog(@"15>>符合");
        }
        else{
            NSLog(@"15>>不符合");
        }
        //邮箱的正则表达式
        NSPredicate *pre16=[NSPredicate predicateWithFormat:@"SELF MATCHES %@",@"^(\\w+)*@(\\w)+((\\.\\w+)+)$"];
        if ([pre16 evaluateWithObject:@"1324213412@qq.com"])
        {
            NSLog(@"16>>符合");
        }
        else{
            NSLog(@"16>>不符合");
        }
        
        
        
        //正则表达式这个类 NSRegularExpression
        NSError *error;
        NSRegularExpression *reg=[NSRegularExpression regularExpressionWithPattern:@"[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+" options:(NSRegularExpressionCaseInsensitive)error:&error];//注意这里不能有开始结束符
        if (error)
        {
            NSLog(@"error=%@",error);
        }
        else
        {
            NSString *longStr=@"这是一个字符串1324213412@SINA.com正则表达式12356434@qq.com";
            NSArray *resultArr=[reg matchesInString:longStr options:0 range:NSMakeRange(0, longStr.length)];
            NSLog(@"resultArr=%@",resultArr);
            //查找找到的个数
            NSLog(@"查找到%ld个邮箱:",[reg numberOfMatchesInString:longStr options:0 range:NSMakeRange(0, longStr.length)]);
            //查找到的结果集（前面查找到的结果程序会自动保存在下面的集合中）
            NSTextCheckingResult *tcr=[reg firstMatchInString:longStr options:0 range:NSMakeRange(0, longStr.length)];
            NSLog(@"tcr=%@",tcr);
            //读出范围
            NSRange range=[reg rangeOfFirstMatchInString:longStr options:0 range:NSMakeRange(0, longStr.length)];
            NSLog(@"range=%@",NSStringFromRange(range));
            //截取出第一个字符串
            NSLog(@"firstEmail=%@",[longStr substringWithRange:range]);
            //查找下一个
            NSLog(@"maxRange=%ld",NSMaxRange(range));//NSMaxRange记录上一次的位置
            NSRange nextRange=[reg rangeOfFirstMatchInString:longStr options:0 range:NSMakeRange(NSMaxRange(range), longStr.length-NSMaxRange(range))];
            NSLog(@"nextRange=%@",NSStringFromRange(nextRange));
            NSLog(@"nextEmail=%@",[longStr substringWithRange:nextRange]);
            //Block的用法
            
            [reg enumerateMatchesInString:longStr options:0 range:NSMakeRange(0, longStr.length) usingBlock:^(NSTextCheckingResult * _Nullable result, NSMatchingFlags flags, BOOL * _Nonnull stop) {
                NSLog(@"%ld",flags);
                NSLog(@">>result=%@",result);
                *stop=YES;//查找到就退出
            }];
        }
    }
    return 0;
}
