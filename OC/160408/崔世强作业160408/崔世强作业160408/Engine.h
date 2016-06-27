//
//  Engine.h
//  崔世强作业160408
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Engine : NSObject//发动机
{
    NSString* _name;
    double _power;
}
-(void)setName:(NSString *)name andsetPower:(double)power;
@end
