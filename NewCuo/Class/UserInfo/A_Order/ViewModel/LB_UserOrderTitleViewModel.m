//
//  LB_UserOrderTitleViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/8/3.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserOrderTitleViewModel.h"
#import "NavigationTitleView.h"

@interface LB_UserOrderTitleViewModel()

@property(strong,nonatomic)NavigationTitleView *titleView;

@end


@implementation LB_UserOrderTitleViewModel

-(void)initUI{
    
    self.titleView = [[NavigationTitleView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, 64)];
    [self.viewController.view addSubview:self.titleView];
    
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

-(void)setOrderType:(ORDERTYPE)orderType
{
    
    NSString *title;
    switch (orderType) {
        case ORDERTYPE_ALL:
            title = @"全部订单";
            break;
        case ORDERTYPE_WAITE_PAY:
            title = @"待付款订单";
            break;
        case ORDERTYPE_WAITE_TAKE:
            title = @"待收货订单";
            break;
        case ORDERTYPE_WAITE_APPRAISE:
            title = @"待评价订单";
            break;
        case ORDERTYPE_RETURN:
            title = @"退款/退货订单";
            break;
        default:
            break;
    }
    [self.titleView.titleLab setText:title];
}


@end
