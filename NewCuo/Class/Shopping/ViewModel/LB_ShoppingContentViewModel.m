//
//  LB_ContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/8/16.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_ShoppingContentViewModel.h"
#import "LB_ShoppingContentView.h"
#import "ShoppingEmptyViewModel.h"
@interface LB_ShoppingContentViewModel();

@property(strong,nonatomic)LB_ShoppingContentView *contentView;

@property(strong,nonatomic)ShoppingEmptyViewModel *emptyViewModel;

@end
@implementation LB_ShoppingContentViewModel

-(void)initUI
{
    self.emptyViewModel = [[ShoppingEmptyViewModel alloc]initWithViewController:self.viewController];
    
    self.contentView = [[LB_ShoppingContentView alloc]init];
    [self.LB_View addSubview:self.contentView];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LB_View.mas_top).offset(64);
        make.bottom.leading.trailing.equalTo(self.LB_View);
    }];
    
    
}


@end
