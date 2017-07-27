//
//  LB_ReadHistoryContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/27.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_ReadHistoryContentViewModel.h"
#import "LB_ReadHistoryContentView.h"

@interface LB_ReadHistoryContentViewModel ()

@property(strong,nonatomic)LB_ReadHistoryContentView *contentView;

@end


@implementation LB_ReadHistoryContentViewModel

-(void)initUI
{
    
    self.contentView = [[LB_ReadHistoryContentView alloc]init];
    [self.viewController.view addSubview:self.contentView];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.viewController.view.mas_top).offset(64);
        make.right.equalTo(self.viewController.view.mas_right).offset(0);
        make.bottom.equalTo(self.viewController.view.mas_bottom).offset(0);
        make.left.equalTo(self.viewController.view.mas_left).offset(0);
        
    }];

}

@end
