//
//  ShoppingViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/7/19.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "ShoppingViewController.h"
#import "ShoppingTitleViewModel.h"
#import "LB_ShoppingContentViewModel.h"

@interface ShoppingViewController ()

@property (strong,nonatomic)ShoppingTitleViewModel *titleViewModel;

@property (strong,nonatomic)LB_ShoppingContentViewModel *contentViewModel;



@end

@implementation ShoppingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleViewModel = [[ShoppingTitleViewModel alloc]initWithViewController:self];
   
    self.contentViewModel =[[LB_ShoppingContentViewModel alloc]initWithViewController:self];
    
    self.contentViewModel.editBtn = self.titleViewModel.titleView.rightBtn;

    
   
    
   
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
