//
//  main.m
//  2
//
//  Created by qingyun on 16/4/5.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSError *a;
        NSString *a1=[[NSString alloc] initWithContentsOfFile:@"/Users/qingyun/Desktop/时间都去哪儿了.txt"  encoding:NSUTF8StringEncoding error:&a];
        NSLog(@"%@",a1);
        NSArray *a2=[a1 componentsSeparatedByString:@"\n"];
        NSLog(@"===%@",a2);
        for (int i=0; i<a2.count; i++)
        {
            NSArray *a3=[a1 componentsSeparatedByString:@"]"];
            NSString *a4=[[NSString alloc] initWithCharacters: length:(8)];
            NSNumber *hour=[NSNumber numberWithChar:[a3[0] NSStringFromRange(1,2)]];
            NSNumber *minute=[NSNumber numberWithInt:[a3[0] intValue];
            NSLog(@"==>%@",a2[i]);
            NSLog(@"--->%@",a3[i]);
        }
        
        NSDictionary *d=@{};
        NSLog(@"***%@",d);
    }
    return 0;
}
