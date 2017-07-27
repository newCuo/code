//
//  LB_MyConcernViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/7/27.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_MyConcernViewController.h"

#import "LB_MyConcernTitleViewModel.h"

#import "LB_MyConcernContentViewModel.h"


@interface LB_MyConcernViewController ()

@property(strong,nonatomic) LB_MyConcernTitleViewModel *titleViewModel;

@property(strong,nonatomic)LB_MyConcernContentViewModel *contentViewModel;

@end

@implementation LB_MyConcernViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleViewModel = [[LB_MyConcernTitleViewModel alloc]initWithViewController:self];
    
    self.contentViewModel = [[LB_MyConcernContentViewModel alloc]initWithViewController:self];
    
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
