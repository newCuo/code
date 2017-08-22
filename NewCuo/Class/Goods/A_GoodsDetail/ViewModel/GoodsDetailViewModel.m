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
#import "GoodsDetailModel.h"
@interface GoodsDetailViewModel ()


@property(strong,nonatomic) GoodsDetailView *detailView;

@property(copy)NSString *tt;
@property(strong,nonatomic)GoodsDetailModel *goodsDetailModel;
@end
@implementation GoodsDetailViewModel


-(void)initUI{
    self.detailView = [[GoodsDetailView alloc]initWithFrame:CGRectMake(0, 64, KSCREENWIDTH, KSCREENHEIGHT-60*SCALE-64)];//60*SCALE 是底部一按钮的高度 64是顶部导航栏的高度
    [self.viewController.view addSubview:self.detailView];
    [self NetWorking];
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
    
    RAC(self.detailView.goodsNameLab,text) = RACObserve(self, goodsDetailModel.goodsNameStr);
    RAC(self.detailView.headerScrollView,localizationImageNamesGroup) = RACObserve(self, goodsDetailModel.goodsImgUrlArr);
    RAC(self.detailView.goodsInfoLab,text) = RACObserve(self, goodsDetailModel.goodsSubTitleStr);
    RAC(self.detailView.goodsPriceLab,text) = RACObserve(self, goodsDetailModel.goodsPriceStr);
    RAC(self.detailView.freightLab,text) = RACObserve(self, goodsDetailModel.freightStr);
    RAC(self.detailView.serviceLab,text) = RACObserve(self, goodsDetailModel.serviceStr);
    RAC(self.detailView.commentLab,text) = RACObserve(self, goodsDetailModel.goodsReviewsStr);
    RAC(self.detailView.commentNumberLab,text) = RACObserve(self, goodsDetailModel.reviewsPercentageStr);
//    for (int ; <#condition#>; <#increment#>) {
//        <#statements#>
//    }
//    RAC(self.detailView.goodsInfoLab,text) = RACObserve(self, goodsDetailModel.goodsSubTitleStr);
}
-(void)NetWorking{
    NSDictionary *dic = @{
                          @"goodsImgUrlArr":@[@"222",@"222",@"222"],
                          @"goodsNameStr":@"商品名name商品名name1",
                          @"goodsSubTitleStr":@"白色1，高配1，豪华1",
                          @"goodsPriceStr":@"77777.77",
                          @"goodsIDStr":@"123456",
                          @"freightStr":@"包邮1",
                          @"serviceStr":@"直接发货直接发货直接1",
                          @"promptArr":@[@"1正品保障",@"2七天无理由退货",@"3测试"],
                          @"goodsReviewsStr":@"评论(暂无商品评价)33",
                          @"reviewsPercentageStr":@"0%"};
    self.goodsDetailModel = [GoodsDetailModel mj_objectWithKeyValues:dic];
}

@end
