//
//  4.h
//  4
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Teacher : NSObject
{
    NSString *_tName;
    int _tage;
    NSString *_tsex;
    NSString *_tspeciality;
}
-(void)setTName:(NSString *)namet andsetTAge:(int)aget andsetTSex:(NSString *)sext andsetTSpeciality:(NSString *)specialityt;
-(void)showTeacher;
@end
@interface Student : NSObject
{
    NSString *_sName;
    int _sage;
    NSString *_ssex;
    NSString *_sspeciality;
}
-(void)setSName:(NSString *)names andsetSAge:(int)ages andsetSSex:(NSString *)sexs andsetSSpeciality:(NSString *)specialitys;
-(void)showStudent;
@end
