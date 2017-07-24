//
//  UserInfoViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/7/19.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "UserInfoViewController.h"
#import "UserInfoTitleViewModel.h"
#import "LB_UserInfoContentViewModel.h"


@interface UserInfoViewController ()
@property (strong,nonatomic)UserInfoTitleViewModel *titleViewModel;
@property (strong,nonatomic)LB_UserInfoContentViewModel *contentViewModel;
@end

@implementation UserInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleViewModel = [[UserInfoTitleViewModel alloc]initWithViewController:self];
    
    self.contentViewModel = [[LB_UserInfoContentViewModel alloc]initWithViewController:self];
    
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
