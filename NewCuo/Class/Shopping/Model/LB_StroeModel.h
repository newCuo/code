//
//  LB_StroeModel.h
//  NewCuo
//
//  Created by 林波 on 2017/8/17.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LB_StroeModel : NSObject

@property(copy,nonatomic)NSString *name;

@property(strong,nonatomic)NSMutableArray *goodsList;

@property(assign,nonatomic)BOOL isSelectAll;

-(void)checkSelectAll;

-(void)selectAll:(BOOL)isSelect;

@end
