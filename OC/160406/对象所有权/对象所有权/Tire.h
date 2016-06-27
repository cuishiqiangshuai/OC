//
//  Tire.h
//  对象所有权
//
//  Created by qingyun on 16/4/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject
{
    NSString *_tireName;
    double _tireRadius;
}
-(void)setTireName:(NSString *)name;
-(void)setTireRadius:(double)radius;
@end
