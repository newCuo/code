//
//  LB_UserOrderViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/8/3.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserOrderViewController.h"

#import "LB_UserOrderTitleViewModel.h"

#import "LB_UserOrderContentViewModel.h"



@interface LB_UserOrderViewController ()



@property(strong,nonatomic)LB_UserOrderTitleViewModel *titleViewModel;

@property(strong,nonatomic)LB_UserOrderContentViewModel *contentViewModel;

@end

@implementation LB_UserOrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleViewModel = [[LB_UserOrderTitleViewModel alloc]initWithViewController:self];
    self.titleViewModel.orderType = self.orderType;
    
    
    self.contentViewModel = [[LB_UserOrderContentViewModel alloc]initWithViewController:self];
    self.contentViewModel.orderType = self.orderType;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
