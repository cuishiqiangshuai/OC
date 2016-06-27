//
//  employee.h
//  4
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "firm.h"

@interface employee : firm
{
    int _bianhao;
    NSString* _name;
    double _number;
}
-(void)setBianhao:(NSString *)b andsetName:(NSString *)n andsetNumber:(double)n1;
@end
