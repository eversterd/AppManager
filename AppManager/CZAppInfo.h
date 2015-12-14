//
//  CZAppInfo.h
//  AppManager
//
//  Created by shiyc on 15/12/12.
//  Copyright © 2015年 shiyc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZAppInfo : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *icon;
-(instancetype)initWithDic:(NSDictionary *)dic;
+(instancetype)appInfoWithDic:(NSDictionary *)dic;
+(NSArray *)appInfosList;
@end
