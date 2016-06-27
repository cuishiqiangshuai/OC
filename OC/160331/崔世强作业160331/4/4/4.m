//
//  4.m
//  4
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "4.h"

@implementation Teacher
-(void)setTName:(NSString *)namet andsetTAge:(int)aget andsetTSex:(NSString *)sext andsetTSpeciality:(NSString *)specialityt
{
    _tName=namet;
    _tage=aget;
    _tsex=sext;
    _tspeciality=specialityt;
}
-(void)showTeacher
{
    NSLog(@"%@ is teacher,%@ is in class",_tName,_tName);
}
@end
@implementation Student
-(void)setSName:(NSString *)names andsetSAge:(int)ages andsetSSex:(NSString *)sexs andsetSSpeciality:(NSString *)specialitys
{
    _sName=names;
    _sage=ages;
    _ssex=sexs;
    _sspeciality=specialitys;
}
-(void)showStudent
{
    NSLog(@"%@ is student, %@ is having a lass",_sName,_sName);
}
@end
