//
//  LB_StroeModel.m
//  NewCuo
//
//  Created by 林波 on 2017/8/17.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_StroeModel.h"
#import "LB_GoodsModel.h"

@implementation LB_StroeModel

-(id)init
{
    self = [super init];
    if (self) {
        self.goodsList = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)setIsSelectAll:(BOOL)isSelectAll
{
    _isSelectAll = isSelectAll;
    
}

-(void)selectAll:(BOOL)isSelect{
    
    for (LB_GoodsModel *model in self.goodsList) {
        model.isSelect = isSelect;
    }
    
}

-(void)checkSelectAll{
    
    BOOL isSelct = YES;
    for (LB_GoodsModel *model in self.goodsList) {
        if (model.isSelect == NO) {
            isSelct = NO;
            break;
        }
    }
    self.isSelectAll = isSelct;
}


@end
