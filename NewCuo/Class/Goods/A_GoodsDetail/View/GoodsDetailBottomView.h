//
//  GoodsDetailBottomView.h
//  NewCuo
//
//  Created by lirch on 2017/7/30.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomButton.h"

@interface GoodsDetailBottomView : UIView
@property (strong,nonatomic)CustomButton *followBtn;//关注按钮
@property (strong,nonatomic)CustomButton *servicesBtn;//客服按钮
@property (strong,nonatomic)CustomButton *shoppingCartBtn;//购物车按钮
@property (strong,nonatomic)UIButton *addToShoppingCartBtn;//加入购物车按钮
@property (strong,nonatomic)UIButton *buyNowBtn;//立即购买按钮
@end
