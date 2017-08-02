//
//  LB_GoodsClassHeadViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/31.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsClassHeadViewModel.h"

#import "LB_GoodsClassHeadView.h"

#import "LB_GoodsClassRankSelectView.h"

@interface LB_GoodsClassHeadViewModel()

@property(strong,nonatomic)LB_GoodsClassHeadView *headView;

@property(strong,nonatomic)NSMutableArray *list;

@property(strong,nonatomic)LB_GoodsClassRankSelectView *selectView;

@end

@implementation LB_GoodsClassHeadViewModel

-(void)initUI{
    
    self.headView = [[LB_GoodsClassHeadView alloc]init];
    [self.viewController.view addSubview:self.headView];
    [self.headView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.viewController.view.mas_top).offset(64);
        make.right.equalTo(self.viewController.view.mas_right);
        make.left.equalTo(self.viewController.view.mas_left);
        make.height.offset(45);
    }];
    
    self.selectView = [[LB_GoodsClassRankSelectView alloc]init];
    [self.viewController.view addSubview:self.selectView];
    [self.selectView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.viewController.view.mas_top).offset(64+45);
        make.right.equalTo(self.viewController.view.mas_right);
        make.left.equalTo(self.viewController.view.mas_left);
        make.bottom.equalTo(self.viewController.view.mas_bottom);
    }];
    
    
}

-(void)bindingEvent
{
    
    RAC(self.selectView,list) = RACObserve(self, list);
    RAC(self.headView,selectString) = RACObserve(self.selectView, selectString);
   
    
    WS(weakSelf)
    self.selectView.clickItem = ^(){
        [weakSelf showSelectViewOpen:NO];
    };
    
    self.headView.clickHeadType = ^(HEADTYPE headType){
        switch (headType) {
            case HEADTYPE_RANK:
                [weakSelf showSelectViewOpen:YES];
                break;
            case HEADTYPE_SELL:
                [weakSelf showSelectViewOpen:NO];
                break;
            case HEADTYPE_PRICE:
                [weakSelf showSelectViewOpen:NO];
                break;
            case HEADTYPE_FILTER:
                [weakSelf showSelectViewOpen:NO];
                break;
            default:
                [weakSelf showSelectViewOpen:NO];
                break;
        }
    };
    
    
}

-(void)showSelectViewOpen:(BOOL)open{
    
    [self.selectView remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.viewController.view.mas_top).offset(64+45);
        make.right.equalTo(self.viewController.view.mas_right);
        make.left.equalTo(self.viewController.view.mas_left);
        if (open==YES) {
             make.bottom.equalTo(self.viewController.view.mas_bottom);
        }else{
            make.height.offset(0);
        }
    }];
    
    [self.selectView.tableView remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.selectView.mas_top);
        make.left.equalTo(self.selectView.mas_left);
        make.right.equalTo(self.selectView.mas_right);
        if (open==YES) {
            make.height.offset(self.list.count*44);
        }else{
            make.height.offset(0);
        }
    }];

    
}


-(void)NetWorking
{
    NSMutableArray * list = [[NSMutableArray alloc]init];
    [list addObject:@"默认排列"];
    [list addObject:@"最新上架"];
    [list addObject:@"评论最多"];
    self.list = list;
     [self showSelectViewOpen:NO];

}

@end
