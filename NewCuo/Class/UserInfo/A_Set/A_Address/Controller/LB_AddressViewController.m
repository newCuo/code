//
//  LB_AddressViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/8/9.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_AddressViewController.h"
#import "LB_AddressTitleViewModel.h"
#import "LB_AddressContentViewModel.h"


@interface LB_AddressViewController ()

@property(strong,nonatomic)LB_AddressTitleViewModel *titleViewModel;

@property(strong,nonatomic)LB_AddressContentViewModel *contentViewModel;

@end

@implementation LB_AddressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleViewModel = [[LB_AddressTitleViewModel alloc]initWithViewController:self];
    self.contentViewModel = [[LB_AddressContentViewModel alloc]initWithViewController:self];
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
