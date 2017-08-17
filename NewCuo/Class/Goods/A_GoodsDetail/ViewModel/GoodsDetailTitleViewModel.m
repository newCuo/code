//
//  GoodsDetailTitleViewModel.m
//  NewCuo
//
//  Created by lirch on 2017/8/2.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "GoodsDetailTitleViewModel.h"
#import "NavigationTitleView.h"

@interface GoodsDetailTitleViewModel ()

@property(strong,nonatomic)NavigationTitleView *titleView;

@end
@implementation GoodsDetailTitleViewModel
-(void)initUI{
    
    //导航
    self.titleView = [[NavigationTitleView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, 64)];
    [self.viewController.view addSubview:self.titleView];
    self.titleView.titleLab.text = @"商品详情";
    [self.titleView.leftBtn setImage:[UIImage imageNamed:@"navigation_back"] forState:UIControlStateNormal];
}

-(void)bindingEvent
{
    
    @weakify(self);
    [[self.titleView.leftBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        [self.viewController.navigationController popViewControllerAnimated:YES];
    }];
    
    
    
}
@end
