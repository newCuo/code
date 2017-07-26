//
//  LB_UserInfoMyMessageViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserInfoMyMessageViewController.h"
#import "LB_MyMessageFootViewModel.h"
#import "LB_MyMessageTitleViewModel.h"
#import "LB_MyMessageContentViewModel.h"

@interface LB_UserInfoMyMessageViewController ()

@property(strong,nonatomic)LB_MyMessageTitleViewModel *titleViewModel;

@property(strong,nonatomic)LB_MyMessageContentViewModel *contentViewModel;

@property(strong,nonatomic)LB_MyMessageFootViewModel *footViewModel;


@end

@implementation LB_UserInfoMyMessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleViewModel = [[LB_MyMessageTitleViewModel alloc]initWithViewController:self];
    self.contentViewModel = [[LB_MyMessageContentViewModel alloc]initWithViewController:self];
     self.footViewModel = [[LB_MyMessageFootViewModel alloc]initWithViewController:self];
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
