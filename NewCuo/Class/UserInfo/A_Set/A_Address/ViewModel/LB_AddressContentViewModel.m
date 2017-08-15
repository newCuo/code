//
//  LB_AddressContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/8/9.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_AddressContentViewModel.h"
#import "LB_AddressContentView.h"
#import "LB_AddressModificationViewController.h"

@interface LB_AddressContentViewModel()

@property(strong,nonatomic)LB_AddressContentView *contentView;

@end

@implementation LB_AddressContentViewModel

-(void)initUI
{
    self.contentView = [[LB_AddressContentView alloc]init];
    [self.LB_View addSubview:self.contentView];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LB_View.mas_top).offset(64);
        make.left.equalTo(self.LB_View.mas_left).offset(0);
        make.right.equalTo(self.LB_View.mas_right).offset(0);
        make.bottom.equalTo(self.LB_View.mas_bottom).offset(0);
    }];
}

-(void)bindingEvent
{
    
    @weakify(self);
    [[self.contentView.addAddressBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        LB_AddressModificationViewController *address = [LB_AddressModificationViewController new];
        [self.viewController.navigationController pushViewController:address animated:YES];
    }];
    
    
    
}


@end
