//
//  Boy.h
//  2
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Girl.h"
@interface Boy : Person
{
    int _age;
    Girl *_boygirl;
}
-(void)setAge:(int)age;
-(void)setBoygirl:(Girl *)bg;
-(void)playboyInfo;
@end
