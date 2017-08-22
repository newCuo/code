//
//  GoodsDetailView.h
//  NewCuo
//
//  Created by lirch on 2017/7/30.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GoodsDetailModel.h"
#import "SDCycleScrollView.h"
@interface GoodsDetailView : UIView
@property (strong,nonatomic)UIScrollView *topScrollView;//
@property (strong,nonatomic)UITableView *bottomTableView;//
@property (strong,nonatomic)SDCycleScrollView *headerScrollView;
@property (strong,nonatomic)UILabel *goodsNameLab;
@property (strong,nonatomic)UILabel *goodsInfoLab;
@property (strong,nonatomic)UILabel *goodsPriceLab;
@property (strong,nonatomic)UILabel *freightLab;
@property (strong,nonatomic)UILabel *serviceLab;
@property (strong,nonatomic)UILabel *commentLab;
@property (strong,nonatomic)UILabel *commentNumberLab;
@property (strong,nonatomic)UIButton *couponRedemptionBtn;
@property (strong,nonatomic)UIButton *addressBtn;
@property (strong,nonatomic)UITapGestureRecognizer *specificationTap;
@property (strong,nonatomic)GoodsDetailModel *goodsDetailModel;
@end
