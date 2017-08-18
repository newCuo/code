//
//  GoodsSpecificationVM.m
//  NewCuo
//
//  Created by lirch on 2017/8/18.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "GoodsSpecificationVM.h"



@implementation GoodsSpecificationVM
-(void)initUI{
    self.goodsSpecificationView = [[GoodsSpecificationView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, KSCREENHEIGHT)];
    [self.LB_View addSubview:self.goodsSpecificationView];
}
-(void)bindingEvent{
    @weakify(self);
    //点击手势：将商品规格选择的这个VC移除
    [[self.goodsSpecificationView.tap rac_gestureSignal] subscribeNext:^(id x) {
        @strongify(self);
        [UIView animateWithDuration:0.25 animations:^{
            self.goodsSpecificationView.infoView.transform = CGAffineTransformMakeTranslation(0, 0);
        } completion:^(BOOL finished) {
            [self.viewController dismissViewControllerAnimated:NO completion:nil];
        }];
        
    }];
    //    [self.goodsSpecificationView.transparentView addGestureRecognizer:self.goodsSpecificationView.tap];
}
@end
