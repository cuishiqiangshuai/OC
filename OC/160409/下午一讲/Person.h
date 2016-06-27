//
//  Person.h
//  下午一讲
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
}
@property(nonatomic,strong)NSString *name;
//@property(strong,nonatomic)Student *stu;
-(void)study;
@end
