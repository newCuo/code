//
//  LB_AccountViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/8/7.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_AccountViewController.h"
#import "LB_AccountTitleViewModel.h"
#import "LB_AccountContentViewModel.h"


@interface LB_AccountViewController ()

@property(strong,nonatomic)LB_AccountTitleViewModel *titleViewModel;

@property(strong,nonatomic)LB_AccountContentViewModel *contentViewModel;


@end

@implementation LB_AccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleViewModel = [[LB_AccountTitleViewModel alloc]initWithViewController:self];
    
    self.contentViewModel = [[LB_AccountContentViewModel alloc]initWithViewController:self];
    
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
