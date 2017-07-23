//
//  LB_SearchViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_SearchViewController.h"
#import "LB_SearchTitleViewModel.h"
#import "LB_SearchContentViewModel.h"

@interface LB_SearchViewController ()

@property(strong,nonatomic)LB_SearchTitleViewModel *titleViewModel;

@property(strong,nonatomic)LB_SearchContentViewModel *contentViewModel;
@end

@implementation LB_SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleViewModel = [[LB_SearchTitleViewModel alloc]initWithViewController:self];
    
    self.contentViewModel = [[LB_SearchContentViewModel alloc]initWithViewController:self];
    
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
