//
//  Teacher.h
//  foundation.1
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Teacher : NSObject
{
    NSString* _name;
    int _age;
}
-(void)setName:(NSString *)name andsetAge:(int)age;
-(void)lookup;
@end
