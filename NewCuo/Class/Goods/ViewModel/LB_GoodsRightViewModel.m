//
//  LB_GoodsRightViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/28.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsRightViewModel.h"
#import "LB_GoodsRightView.h"
#import "LB_GoodsClassViewController.h"
#import "GoodsDetailsViewController.h"

@interface LB_GoodsRightViewModel()

@property(strong,nonatomic)LB_GoodsRightView *rightView;

@end

@implementation LB_GoodsRightViewModel

-(void)initUI{
    
    self.rightView = [[LB_GoodsRightView alloc]init];
    [self.viewController.view addSubview:self.rightView];
    [self.rightView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.viewController.view.mas_top).offset(64);
        make.right.equalTo(self.viewController.view.mas_right).offset(0);
        make.left.equalTo(self.viewController.view.mas_left).offset(100);
        make.bottom.equalTo(self.viewController.view.mas_bottom).offset(0);
    }];
    
}

-(void)bindingEvent
{
    WS(weakSelf);
    self.rightView.clickItem = ^()
    {
        GoodsDetailsViewController *goodsClass = [GoodsDetailsViewController new];
//        LB_GoodsClassViewController *goodsClass = [[LB_GoodsClassViewController alloc]init];
        goodsClass.hidesBottomBarWhenPushed = YES;
        [weakSelf.viewController.navigationController pushViewController:goodsClass animated:YES];
    };
    
    
    
}


-(void)initConfiguration
{
    
    [[[NSNotificationCenter defaultCenter] rac_addObserverForName:KNTCHANGEGOODSCLASS object:@"KNTCHANGEGOODSCLASS"] subscribeNext:^(id x) {
        
        NSLog(@"%@",x);
        
        
    }];
    
    
    
}


-(void)NetWorking
{
    
    
    
}

@end
