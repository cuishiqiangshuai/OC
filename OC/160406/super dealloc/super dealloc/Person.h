//
//  Person.h
//  对象所有权
//
//  Created by qingyun on 16/4/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
}
-(void)setName:(NSString *)name;
@end
