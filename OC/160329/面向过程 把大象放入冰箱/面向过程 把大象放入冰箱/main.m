//
//  main.m
//  面向过程 把大象放入冰箱
//
//  Created by qingyun on 16/3/29.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
void openFridge(char *);//打开冰箱
void putinElephante(char*,char*);//放入冰箱
void closeFridge(char *);//关闭冰箱
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //C面向过程分析
        char *fridge="美的01";
        //1.打开冰箱
        openFridge(fridge);
        //2.放入大象
        putinElephante(fridge, "非洲象");
        //2.关冰箱
        closeFridge(fridge);
    }
    return 0;
}
void openFridge(char *fridge)//打开冰箱
{
    printf("打开 %s 冰箱\n",fridge);
}
void putinElephante(char*fridge,char*ele)//放入冰箱
{
    printf("把 %s 放入 %s 冰箱\n",ele,fridge);
}
void closeFridge(char *fridge)//关闭冰箱
{
    printf("关闭%s冰箱\n",fridge);
}
