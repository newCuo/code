//
//  LB_SearchModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/24.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_SearchModel.h"

#define SEARCHCONTENT @"searchContent"

@interface LB_SearchModel()

@end

@implementation LB_SearchModel

//保存内容
+(void)saveSearch:(NSString*)name{
    
    if (name.length<1) {
        return;
    }
    
    NSMutableArray *newList = [[NSMutableArray alloc]init];
    [newList addObject:name];
    
    NSMutableArray *list = [self getAllSearch];
    for (NSString * tt in list) {
        if (![tt isEqualToString:name]) {
            [newList addObject:tt];
        }
    }
    [[NSUserDefaults standardUserDefaults] setObject:newList forKey:SEARCHCONTENT];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}

//获取所有的搜索内容
+(NSMutableArray*)getAllSearch{
    
   NSMutableArray * list =  [[NSUserDefaults standardUserDefaults] objectForKey:SEARCHCONTENT];
   return list;
    
}


//清空内容
+(void)clearSearch{
    
    NSMutableArray *list = [[NSMutableArray alloc]init];
    [[NSUserDefaults standardUserDefaults] setObject:list forKey:SEARCHCONTENT];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
