//
//  public.h
//  4.2
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Public : NSObject
{
    NSString *_name;
    int _age;
    NSString *_sex;
    NSString *_speciality;
}
-(void)setName:(NSString *)name andsetAge:(int)age andsetSex:(NSString *)sex andsetSpeciality:(NSString *)speciality;

@end
