//
//  LoginViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/7/21.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginTitleViewModel.h"
#import "LB_LoginContentViewModel.h"

@interface LoginViewController ()

@property(strong,nonatomic)LoginTitleViewModel *titleViewModel;

@property(strong,nonatomic)LB_LoginContentViewModel *contentViewModel;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleViewModel = [[LoginTitleViewModel alloc]initWithViewController:self];
    
    self.contentViewModel = [[LB_LoginContentViewModel alloc]initWithViewController:self];
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
