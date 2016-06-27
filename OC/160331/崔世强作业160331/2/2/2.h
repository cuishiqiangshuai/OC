//
//  2.h
//  2
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Employee : NSObject
{
    char *_name;
    int _age;
    double _wages;
}
-(void)setName:(char *)name andsetAge:(int)age andsetWages:(double)wages;
-(void)show;
@end
