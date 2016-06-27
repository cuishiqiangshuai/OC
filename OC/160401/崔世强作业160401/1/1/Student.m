//
//  Student.m
//  1
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)setNumber:(int)number andsetClass:(int)classs andsetProfessional:(NSString *)professional andsetMark:(int)mark
{
    _number=number;
    _classs=classs;
    _professional=professional;
    _mark=mark;
}
-(void)drawPerson
{
    [super drawPerson];
    NSLog(@"%d %d %@ %d",_number,_classs,_professional,_mark);
}
@end
@implementation Teacher

-(void)setTnumber:(int)tnumber andsetTitle:(NSString *)title andsetWages:(int)wages
{
    _tnumber=tnumber;
    _title=title;
    _wages=wages;
}
-(void)drawPerson
{
    [super drawPerson];
    NSLog(@"%d %@ %d",_tnumber,_title,_wages);
}
@end
