//
//  GoodsDetailBottomViewModel.m
//  NewCuo
//
//  Created by lirch on 2017/7/30.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "GoodsDetailBottomViewModel.h"
#import "GoodsDetailBottomView.h"
#import "GoodsDetailView.h"
#import "GoodsSpecificationSelectVC.h"

@interface GoodsDetailBottomViewModel()

@property (strong,nonatomic)GoodsDetailBottomView *bottomView;

@end
@implementation GoodsDetailBottomViewModel


-(void)initUI{
    self.bottomView = [[GoodsDetailBottomView alloc]initWithFrame:CGRectMake(0, KSCREENHEIGHT - 60*SCALE, KSCREENWIDTH, 60*SCALE)];
    [self.LB_View addSubview:self.bottomView];
}
-(void)bindingEvent{    
    @weakify(self);
    [[self.bottomView.addToShoppingCartBtn rac_signalForControlEvents:(UIControlEventTouchUpInside)] subscribeNext:^(id x) {
        @strongify(self);
        GoodsSpecificationSelectVC *goodsSpecificationSelectVC = [GoodsSpecificationSelectVC new];
        goodsSpecificationSelectVC.modalPresentationStyle = UIModalPresentationOverFullScreen;//设置样式，与背景透明配合
        [self.viewController.navigationController presentViewController:goodsSpecificationSelectVC animated:NO completion:^{
            goodsSpecificationSelectVC.view.superview.backgroundColor = [UIColor clearColor];//设置背景为透明色
        }];
    }];
    [[self.bottomView.buyNowBtn rac_signalForControlEvents:(UIControlEventTouchUpInside)] subscribeNext:^(id x) {
        @strongify(self);
        GoodsSpecificationSelectVC *goodsSpecificationSelectVC = [GoodsSpecificationSelectVC new];
        goodsSpecificationSelectVC.modalPresentationStyle = UIModalPresentationOverFullScreen;//设置样式，与背景透明配合
        [self.viewController.navigationController presentViewController:goodsSpecificationSelectVC animated:NO completion:^{
            goodsSpecificationSelectVC.view.superview.backgroundColor = [UIColor clearColor];//设置背景为透明色
        }];
    }];
}
@end
