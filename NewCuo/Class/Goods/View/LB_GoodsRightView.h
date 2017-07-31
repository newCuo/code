//
//  LB_GoodsRightView.h
//  NewCuo
//
//  Created by 林波 on 2017/7/28.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ClickItem)();

@interface LB_GoodsRightView : UIView

@property(strong,nonatomic)ClickItem clickItem;

@end
