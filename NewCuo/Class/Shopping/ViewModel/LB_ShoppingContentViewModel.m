//
//  LB_ContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/8/16.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_ShoppingContentViewModel.h"
#import "LB_ShoppingContentView.h"
#import "ShoppingEmptyViewModel.h"
#import "LB_GoodsModel.h"
#import "LB_StroeModel.h"
#import "AppDelegate.h"

@interface LB_ShoppingContentViewModel();

@property(strong,nonatomic)LB_ShoppingContentView *contentView;

@property(strong,nonatomic)ShoppingEmptyViewModel *emptyViewModel;

@property(strong,nonatomic)NSMutableArray *list;

@property(assign,nonatomic)BOOL isEdited;

@end
@implementation LB_ShoppingContentViewModel

-(void)initUI
{
    self.emptyViewModel = [[ShoppingEmptyViewModel alloc]initWithViewController:self.viewController];
    
    self.contentView = [[LB_ShoppingContentView alloc]init];
    [self.LB_View addSubview:self.contentView];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LB_View.mas_top).offset(64);
        make.bottom.leading.trailing.equalTo(self.LB_View);
    }];

    self.list = [[NSMutableArray alloc]initWithCapacity:5];
    
    
}


-(void)bindingEvent
{
    
    RAC(self.contentView,list) = RACObserve(self, list);
   
    
    
    
    
}

-(void)setEditBtn:(UIButton *)editBtn{
    
    
    _editBtn = editBtn;
    [self.editBtn setTitle:@"编辑" forState:UIControlStateNormal];
   
    [[self.editBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(UIButton *btn) {
        self.list = [NSMutableArray new];
        
    }];

}


-(void)loadNewTopic{
    
    NSMutableArray * yy = [[NSMutableArray alloc]init];
    for (int i = 0; i<5; i++) {
        LB_StroeModel * model = [[LB_StroeModel alloc]init];
        int t = arc4random()%4+1;
        for (int j = 0; j<t; j++) {
            LB_GoodsModel *goods = [[LB_GoodsModel alloc]init];
            [model.goodsList addObject:goods];
        }
        [yy addObject:model];
    }
    self.list = yy;
    
    
}

-(void)setList:(NSMutableArray *)list
{
    
    _list = list;
    AppDelegate *app = KAPPDELEGATE;
    if (list.count>0) {
         app.tabBarVC.shoppingItem.badgeValue = [NSString stringWithFormat:@"%lu",(unsigned long)list.count];
    }else
    {
        app.tabBarVC.shoppingItem.badgeValue = nil;
    }
    self.editBtn.hidden = list.count>0?NO:YES;
    self.contentView.hidden = list.count>0?NO:YES;
    [self.contentView.tableView reloadData];
}

-(void)NetWorking
{
    
    [self loadNewTopic];
    
    
    
}


@end
