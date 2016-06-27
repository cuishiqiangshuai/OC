//
//  Person.h
//  下午  第二讲
//
//  Created by qingyun on 16/4/12.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
@interface Person : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)int age;
@property(nonatomic,strong)NSDate *birthday;
@property(nonatomic,assign)double salary;
@property(nonatomic,strong)NSMutableArray *friends;
-(instancetype)initWithDic:(NSDictionary *)dic;
@property(nonatomic,strong)Student *student;
@end
