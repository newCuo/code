//
//  LB_AccountContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/8/7.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_AccountContentViewModel.h"
#import "LB_AccountContentView.h"

@interface LB_AccountContentViewModel()

@property(strong,nonatomic)LB_AccountContentView *contentView;

@end
@implementation LB_AccountContentViewModel

-(void)initUI{
    
    self.contentView = [[LB_AccountContentView alloc]init];
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
    
    
}

-(void)NetWorking{
    
    
    
}



@end
