//
//  LB_GoodsClassHeadView.h
//  NewCuo
//
//  Created by 林波 on 2017/7/31.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    HEADTYPE_RANK = 1,
    HEADTYPE_SELL = 2,
    HEADTYPE_PRICE = 3,
    HEADTYPE_FILTER = 4,
    HEADTYPE_RANK_CLOSED = 5,

    
} HEADTYPE;

typedef void(^ClickHeadType)(HEADTYPE type);

@interface LB_GoodsClassHeadView : UIView

@property(copy,nonatomic)NSString *selectString;

@property(strong,nonatomic)ClickHeadType clickHeadType;

@end
