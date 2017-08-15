//
//  LB_AddressModificationContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/8/14.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_AddressModificationContentViewModel.h"
#import "LB_AddressModificationContentView.h"


@interface LB_AddressModificationContentViewModel()

@property(strong,nonatomic)LB_AddressModificationContentView *contentView;

@end
@implementation LB_AddressModificationContentViewModel

-(void)initUI
{
    self.contentView = [[LB_AddressModificationContentView alloc]init];
    [self.LB_View addSubview:self.contentView];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LB_View.mas_top).offset(64);
        make.bottom.leading.trailing.equalTo(self.LB_View);
    }];
}


@end
