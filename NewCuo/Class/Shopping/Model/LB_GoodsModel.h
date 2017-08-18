//
//  LB_GoodsModel.h
//  NewCuo
//
//  Created by 林波 on 2017/8/17.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LB_GoodsModel : NSObject

@property(copy,nonatomic) NSString *name;

@property(assign,nonatomic) CGFloat money;

@property(assign,nonatomic) NSInteger count;

@property(copy,nonatomic) NSString *type;

@property(assign,nonatomic) BOOL isSelect;

@end
