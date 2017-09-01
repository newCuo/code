//
//  LB_CouponContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/8/31.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_CouponContentViewModel.h"
#import "LB_CouponContentHeadView.h"
#import "LB_CouponContentFootView.h"
#import "LB_CouponContentView.h"
@interface LB_CouponContentViewModel()

@property(strong,nonatomic)LB_CouponContentHeadView *headView;
@property(strong,nonatomic)LB_CouponContentFootView *footView;
@property(strong,nonatomic)LB_CouponContentView *contentView;

@end
@implementation LB_CouponContentViewModel

-(void)initUI{
    
    self.headView = [[LB_CouponContentHeadView alloc]init];
    [self.LB_View addSubview:_headView];
    [self.headView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.equalTo(self.LB_View);
        make.top.offset(64);
        make.height.offset(48);
    }];
    
    self.footView = [[LB_CouponContentFootView alloc]init];
    [self.LB_View addSubview:self.footView];
    [self.footView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.equalTo(self.LB_View);
        make.bottom.equalTo(self.LB_View.mas_bottom).offset(0);
        make.height.offset(65);
    }];
    
    self.contentView = [[LB_CouponContentView alloc]init];
    [self.LB_View addSubview:self.contentView];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.equalTo(self.LB_View);
        make.top.equalTo(self.headView.mas_bottom).offset(0);
        make.bottom.equalTo(self.footView.mas_top).offset(0);
    }];
    
    
}
-(void)bindingEvent
{
    
    
    
    
}



@end
