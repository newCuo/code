//
//  GoodsViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/7/19.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "GoodsViewController.h"
#import "LB_GoodsTitleViewModel.h"

@interface GoodsViewController ()

@property(strong,nonatomic)LB_GoodsTitleViewModel *goodsTitleViewModel;


@end

@implementation GoodsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.goodsTitleViewModel = [[LB_GoodsTitleViewModel alloc]initWithViewController:self];
    
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
