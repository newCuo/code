//
//  GoodsDetailViewModel.m
//  NewCuo
//
//  Created by lirch on 2017/8/1.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "GoodsDetailViewModel.h"
#import "GoodsDetailView.h"
#import "GoodsSpecificationSelectVC.h"
@interface GoodsDetailViewModel ()


@property(strong,nonatomic) GoodsDetailView *detailView;

//@property(copy)NSString *tt;
@end
@implementation GoodsDetailViewModel


-(void)initUI{
    self.detailView = [[GoodsDetailView alloc]initWithFrame:CGRectMake(0, 64, KSCREENWIDTH, KSCREENHEIGHT-60*SCALE-64)];//60*SCALE 是底部一按钮的高度 64是顶部导航栏的高度
    [self.viewController.view addSubview:self.detailView];
    
}
-(void)bindingEvent{
    @weakify(self);
    [[self.detailView.specificationTap rac_gestureSignal] subscribeNext:^(id x) {
        @strongify(self);
        GoodsSpecificationSelectVC *goodsSpecificationSelectVC = [GoodsSpecificationSelectVC new];
        goodsSpecificationSelectVC.modalPresentationStyle = UIModalPresentationOverFullScreen;//设置样式，与背景透明配合
        [self.viewController.navigationController presentViewController:goodsSpecificationSelectVC animated:NO completion:^{
            goodsSpecificationSelectVC.view.superview.backgroundColor = [UIColor clearColor];//设置背景为透明色
        }];
    }];
    
//    RAC(self.detailView.goodsNameLab,text) = RACObserve(self, tt);

    
    
}
-(void)NetWorking
{
    
    
}

@end
