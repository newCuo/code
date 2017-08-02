//
//  LB_GoodsClassViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/7/28.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsClassViewController.h"
#import "LB_GoodsClassTitleViewModel.h"
#import "LB_GoodsClassHeadViewModel.h"
#import "LB_GoodsClassListViewModel.h"


@interface LB_GoodsClassViewController ()

@property(strong,nonatomic)LB_GoodsClassTitleViewModel *titleViewModel;

@property(strong,nonatomic)LB_GoodsClassHeadViewModel *headViewModel;

@property(strong,nonatomic)LB_GoodsClassListViewModel *listViewModel;

@end

@implementation LB_GoodsClassViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleViewModel = [[LB_GoodsClassTitleViewModel alloc]initWithViewController:self];
    
    
    self.listViewModel = [[LB_GoodsClassListViewModel alloc]initWithViewController:self];
    
    self.headViewModel = [[LB_GoodsClassHeadViewModel alloc]initWithViewController:self];

    RAC(self.listViewModel,isList) = RACObserve(self.titleViewModel, isList);
    
}

-(void)bindingEvent{
    
    

    
    
    
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
