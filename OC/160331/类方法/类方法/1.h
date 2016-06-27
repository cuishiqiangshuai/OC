//
//  1.h
//  类方法
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
    NSString *_sex;
}
+(Person *)personWithName:(NSString *)name andAge:(int)age andSex:(NSString *)sex;
+(void)sleep;
@end
