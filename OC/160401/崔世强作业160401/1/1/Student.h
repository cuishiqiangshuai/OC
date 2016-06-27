//
//  Student.h
//  1
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"
@interface Student : Person
{
    int _number;
    int _classs;
    NSString* _professional;
    int _mark;
}
-(void)setNumber:(int)number andsetClass:(int)classs andsetProfessional:(NSString *)professional andsetMark:(int)mark;
@end
@interface Teacher : Person
{
    int _tnumber;
    NSString* _title;
    int _wages;
}
-(void)setTnumber:(int)tnumber andsetTitle:(NSString *)title andsetWages:(int)wages;
@end
