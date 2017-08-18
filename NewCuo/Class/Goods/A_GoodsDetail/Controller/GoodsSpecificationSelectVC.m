//
//  GoodsSpecificationSelectVC.m
//  NewCuo
//
//  Created by lirch on 2017/8/18.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "GoodsSpecificationSelectVC.h"
#import "GoodsSpecificationVM.h"

@interface GoodsSpecificationSelectVC ()
@property (strong,nonatomic)GoodsSpecificationVM *goodsSpecificationVM;

@end

@implementation GoodsSpecificationSelectVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
    self.goodsSpecificationVM = [[GoodsSpecificationVM alloc]initWithViewController:self];
}
-(void)viewDidAppear:(BOOL)animated{
    //动画
    [UIView animateWithDuration:0.25 animations:^{
        //由下向上平移
        self.goodsSpecificationVM.goodsSpecificationView.infoView.transform = CGAffineTransformMakeTranslation(0, -320);
    }];
}

-(void)dealloc{
    NSLog(@"****LI_GoodsSpecificationSelectVC ** dealloc");
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
