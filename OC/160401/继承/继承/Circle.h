//
//  Circle.h
//  继承
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "publicshape.h"
#import "publicshape.h"//对于继承，都用import
//对于继承：子类可以使用父类的所有属性和行为
@interface Circle : publicshape
{
    double _radius;//子类自己的属性（半径）
}
-(void)setRadius:(double)r;//子类自己的方法
@end
