//
//  LB_SetViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_SetViewController.h"
#import "LB_SetViewModel.h"
#import "LB_SetTitleViewModel.h"
#import "LB_SetFootViewModel.h"

@interface LB_SetViewController ()

@property(strong,nonatomic)LB_SetViewModel *setViewModel;

@property(strong,nonatomic)LB_SetTitleViewModel *setTitleViewModel;

@property(strong,nonatomic)LB_SetFootViewModel *setFootViewModel;

@end

@implementation LB_SetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.setTitleViewModel = [[LB_SetTitleViewModel alloc]initWithViewController:self];
    
    self.setViewModel = [[LB_SetViewModel alloc]initWithViewController:self];
    
    self.setFootViewModel =  [[LB_SetFootViewModel alloc]initWithViewController:self];
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
