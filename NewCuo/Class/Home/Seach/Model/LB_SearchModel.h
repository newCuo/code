//
//  LB_SearchModel.h
//  NewCuo
//
//  Created by 林波 on 2017/7/24.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LB_SearchModel : NSObject

//保存内容
+(void)saveSearch:(NSString*)name;

//获取所有的搜索内容
+(NSMutableArray*)getAllSearch;


//清空内容
+(void)clearSearch;

@end
