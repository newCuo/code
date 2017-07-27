//
//  LB_ReadHistoryViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/7/27.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_ReadHistoryViewController.h"
#import "LB_ReadHistoryTitleViewModel.h"
#import "LB_ReadHistoryContentViewModel.h"

@interface LB_ReadHistoryViewController ()

@property(strong,nonatomic)LB_ReadHistoryTitleViewModel *titleViewModel;

@property(strong,nonatomic)LB_ReadHistoryContentViewModel *contentViewModel;


@end

@implementation LB_ReadHistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleViewModel = [[LB_ReadHistoryTitleViewModel alloc]initWithViewController:self];
    
    self.contentViewModel = [[LB_ReadHistoryContentViewModel alloc]initWithViewController:self];
    
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
