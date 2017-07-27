//
//  LB_MyConcernContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/27.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_MyConcernContentViewModel.h"
#import "LB_MyConcernContentView.h"


@interface LB_MyConcernContentViewModel()

@property(strong,nonatomic)LB_MyConcernContentView *contentView;

@end

@implementation LB_MyConcernContentViewModel

-(void)initUI{
    
    
    self.contentView = [[LB_MyConcernContentView alloc]init];
    [self.viewController.view addSubview:self.contentView];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.viewController.view.mas_top).offset(64);
        make.right.equalTo(self.viewController.view.mas_right).offset(0);
        make.bottom.equalTo(self.viewController.view.mas_bottom).offset(0);
        make.left.equalTo(self.viewController.view.mas_left).offset(0);
        
    }];
    
}

@end
