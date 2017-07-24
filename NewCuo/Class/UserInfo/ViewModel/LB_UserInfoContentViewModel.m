//
//  LB_UserInfoContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/24.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserInfoContentViewModel.h"
#import "LB_UserInfoHeadView.h"

@interface LB_UserInfoContentViewModel()

@property(strong,nonatomic)UIScrollView *backScrollView;

@property(strong,nonatomic)LB_UserInfoHeadView *userInfoHeadView;

@end

@implementation LB_UserInfoContentViewModel


-(void)initUI{
    
    
      
    
    self.backScrollView = [[UIScrollView alloc]init];
    self.backScrollView.backgroundColor = K_BACKGROUND_COLOR;
    [self.viewController.view addSubview:self.backScrollView];
    [self.backScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.viewController.view.mas_top).offset(64);
        make.left.equalTo(self.viewController.view.mas_left).offset(0);
        make.bottom.equalTo(self.viewController.view.mas_bottom).offset(0);
        make.right.equalTo(self.viewController.view.mas_right).offset(0);
    }];
    
    
 
    
    
    
    self.userInfoHeadView = [[LB_UserInfoHeadView alloc]init];
    [self.backScrollView addSubview:self.userInfoHeadView];
    [self.userInfoHeadView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backScrollView.mas_top).offset(0);
        make.left.equalTo(self.backScrollView.mas_left).offset(0);
        make.width.offset(KSCREENWIDTH);
        make.height.offset(170);
    }];
    
}


@end
