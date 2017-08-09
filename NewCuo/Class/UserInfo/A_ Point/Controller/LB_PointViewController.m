//
//  LB_PointViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/8/7.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_PointViewController.h"
#import "LB_PointTitleViewModel.h"
#import "LB_PointContentViewModel.h"

@interface LB_PointViewController ()

@property(strong,nonatomic)LB_PointTitleViewModel *titleViewModel;

@property(strong,nonatomic)LB_PointContentViewModel *contentViewModel;

@end

@implementation LB_PointViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleViewModel = [[LB_PointTitleViewModel alloc]initWithViewController:self];
    self.contentViewModel = [[LB_PointContentViewModel alloc]initWithViewController:self];
    
    
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
