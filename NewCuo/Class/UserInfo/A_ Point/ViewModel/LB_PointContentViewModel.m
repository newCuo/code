//
//  LB_PointContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/8/7.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_PointContentViewModel.h"
#import "LB_PointContentView.h"


@interface LB_PointContentViewModel()

@property(strong,nonatomic)LB_PointContentView *contentView;

@end

@implementation LB_PointContentViewModel

-(void)initUI
{
    self.contentView = [[LB_PointContentView alloc]init];
    [self.LB_View addSubview:self.contentView];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LB_View.mas_top).offset(64);
        make.right.equalTo(self.LB_View.mas_right).offset(0);
        make.left.equalTo(self.LB_View.mas_left).offset(0);
        make.bottom.equalTo(self.LB_View.mas_bottom).offset(0);
    }];
}


@end
