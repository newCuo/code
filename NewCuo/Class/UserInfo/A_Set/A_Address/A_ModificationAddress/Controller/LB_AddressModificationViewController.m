//
//  LB_AddressModificationViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/8/14.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_AddressModificationViewController.h"
#import "LB_AddressModificationTitleViewModel.h"
#import "LB_AddressModificationContentViewModel.h"


@interface LB_AddressModificationViewController ()

@property(strong,nonatomic)LB_AddressModificationTitleViewModel *titleViewModel;

@property(strong,nonatomic)LB_AddressModificationContentViewModel *contentViewModel;

@end

@implementation LB_AddressModificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleViewModel = [[LB_AddressModificationTitleViewModel alloc]initWithViewController:self];
    
    self.contentViewModel = [[LB_AddressModificationContentViewModel alloc]initWithViewController:self];
    
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
