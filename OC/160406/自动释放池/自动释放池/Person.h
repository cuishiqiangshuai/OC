//
//  Person.h
//  自动释放池
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
    Person *_person;
}
-(void)setAge:(int)age;
-(void)setPerson:(Person *)person;
@end
