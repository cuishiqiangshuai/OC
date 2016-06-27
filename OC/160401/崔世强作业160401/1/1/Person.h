//
//  Person.h
//  1
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString* _name;
    int _age;
    NSString* _sex;
    NSString* _address;
}
-(void)setName:(NSString *)name andsetAge:(int)age andsetSex:(NSString *)sex andsetAddress:(NSString *)addrss;
-(void)drawPerson;
@end
