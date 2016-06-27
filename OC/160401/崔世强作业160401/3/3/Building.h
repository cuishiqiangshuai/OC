//
//  Building.h
//  3
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Building : NSObject
{
    int _cheng;
    int _fang;
    double _yingchi;
}
-(void)setCheng:(int)c andsetFang:(int)f andsetyingchi:(double)y;
-(void)playbuilding;
@end
