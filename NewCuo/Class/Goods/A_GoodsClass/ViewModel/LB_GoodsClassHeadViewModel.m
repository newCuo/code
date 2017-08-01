//
//  LB_GoodsClassHeadViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/31.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsClassHeadViewModel.h"

#import "LB_GoodsClassHeadView.h"
@interface LB_GoodsClassHeadViewModel()

@property(strong,nonatomic)LB_GoodsClassHeadView *headView;

@end
@implementation LB_GoodsClassHeadViewModel

-(void)initUI{
    
    self.headView = [[LB_GoodsClassHeadView alloc]init];
    [self.viewController.view addSubview:self.headView];
    [self.headView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.viewController.view.mas_top).offset(64);
        make.right.equalTo(self.viewController.view.mas_right);
        make.left.equalTo(self.viewController.view.mas_left);
        make.height.offset(45);
    }];
    
    
}


@end
