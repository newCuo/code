//
//  LB_GoodsLeftViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/28.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsLeftViewModel.h"
#import "LB_GoodsLeftView.h"
#import "LB_GoodsLeftModel.h"


@interface LB_GoodsLeftViewModel()

@property(strong,nonatomic)LB_GoodsLeftView *leftView;

@property(strong,nonatomic)NSMutableArray *list;

@end

@implementation LB_GoodsLeftViewModel


-(void)initUI
{
    
    self.leftView = [[LB_GoodsLeftView alloc]init];
    [self.viewController.view addSubview:self.leftView];
    [self.leftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.viewController.view.mas_top).offset(64);
        make.width.offset(100);
        make.left.equalTo(self.viewController.view.mas_left).offset(0);
        make.bottom.equalTo(self.viewController.view.mas_bottom).offset(0);
    }];
    
}
-(void)bindingEvent
{
    RAC(self.leftView,list) = RACObserve(self, list);
    
    
    
}


-(void)NetWorking
{
    
    NSMutableArray *tt = [[NSMutableArray alloc]init];
    for (int i = 0; i<9; i++) {
        LB_GoodsLeftModel *model = [[LB_GoodsLeftModel alloc]init];
        model.name = [NSString stringWithFormat:@"平底锅%d",i];
        model.isSelect = NO;
        if (i==0) {
            model.isSelect = YES;
        }
        [tt addObject:model];
    }
    self.list = tt;
}


@end
