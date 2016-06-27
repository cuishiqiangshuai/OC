//
//  Circle.h
//  复合
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "publicShape.h"//复合
@interface Circle : NSObject
{
    shapeColor _fillcolor;
    shapeRect _rect;
}
-(void)setFillColor:(shapeColor)color andsetRect:(shapeRect)rect;
-(void)drawCircle;

@end
