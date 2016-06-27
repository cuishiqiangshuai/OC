//
//  Person.h
//  多态+id类型
//
//  Created by qingyun on 16/4/13.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)int age;
-(void)showInfo;
+(void)showClass;
@end
