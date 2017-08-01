//
//  GoodsDetailsViewController.m
//  NewCuo
//
//  Created by lirch on 2017/7/30.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "GoodsDetailsViewController.h"
#import "GoodsDetailBottomViewModel.h"
#import "GoodsDetailViewModel.h"
@interface GoodsDetailsViewController ()
@property (strong,nonatomic)GoodsDetailBottomViewModel *goodsDetailBottomViewModel;
@property (strong,nonatomic)GoodsDetailViewModel *goodsDetailViewModel;
@end

@implementation GoodsDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.goodsDetailViewModel = [[GoodsDetailViewModel alloc]initWithViewController:self];
    self.goodsDetailBottomViewModel = [[GoodsDetailBottomViewModel alloc]initWithViewController:self];
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
