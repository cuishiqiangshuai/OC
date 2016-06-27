//
//  firm.m
//  4
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "firm.h"

@implementation firm
-(void)setMainager:(NSString *)m andsetTechnician:(NSString *)t andsetSaleman:(NSString *)s andsetSalemanager:(NSString *)s1
{
    _mainager=m;
    _technician=t;
    _saleman=s;
    _salemanager=s1;
}
-(void)drawFirm
{
    NSLog(@"%@,%@,%@,%@",_mainager,_technician,_saleman,_salemanager);
}
@end
