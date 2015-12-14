//
//  CZAppInfo.m
//  AppManager
//
//  Created by shiyc on 15/12/12.
//  Copyright © 2015年 shiyc. All rights reserved.
//

#import "CZAppInfo.h"

@implementation CZAppInfo
-(instancetype)initWithDic:(NSDictionary *)dic{
    if(self=[super init]){
        self.name=dic[@"name"];
        self.icon=dic[@"icon"];
        
    }
    return self;
}
+(instancetype)appInfoWithDic:(NSDictionary *)dic{
    return [[self alloc] initWithDic:dic];
}
+(NSArray *)appInfosList{
    NSBundle *bundle=[NSBundle mainBundle];
    NSString *path= [bundle pathForResource:@"app" ofType:@"plist"];
    NSArray *dicArray=[NSArray arrayWithContentsOfFile:path];
    NSMutableArray *tmpArray=[NSMutableArray array];
    for (NSDictionary *dic in dicArray) {
        CZAppInfo *appInfo=[CZAppInfo appInfoWithDic:dic];
        
        [tmpArray addObject:appInfo];
}
    return tmpArray;
}
@end