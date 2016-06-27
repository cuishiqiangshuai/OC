//
//  Tire.h
//  崔世强作业160408
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject
{
    NSString* _brand;
    double _preesure;//胎压
    double _tireDeepth;//胎厚
}
-(id)initWithBrond:(NSString *)brand andPreesure:(double)preesure andTireDeepth:(double)tireDeepth;
-(id)initWithPreesure:(double)preesure;
-(id)initWithtireDeepth:(double)tireDeepth;
@end
