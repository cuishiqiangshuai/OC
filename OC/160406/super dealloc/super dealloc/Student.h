//
//  Student.h
//  对象所有权
//
//  Created by qingyun on 16/4/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"

@interface Student : Person
{
    NSString *_stuID;
}
-(void)setStuID:(NSString *)ID;
@end
