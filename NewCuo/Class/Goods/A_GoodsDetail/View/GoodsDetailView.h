//
//  GoodsDetailView.h
//  NewCuo
//
//  Created by lirch on 2017/7/30.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GoodsDetailView : UIView
@property (strong,nonatomic)UIScrollView *topScrollView;//
@property (strong,nonatomic)UITableView *bottomTableView;//
@property (strong,nonatomic)UILabel *goodsNameLab;
@property (strong,nonatomic)UILabel *goodsInfoLab;
@property (strong,nonatomic)UILabel *goodsPriceLab;
@property (strong,nonatomic)UIButton *couponRedemptionBtn;
@property (strong,nonatomic)UIButton *addressBtn;
@property (strong,nonatomic)UITapGestureRecognizer *specificationTap;
@end
