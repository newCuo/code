//
//  LB_GoodsClassListViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/31.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsClassListViewModel.h"

#import "LB_GoodsClassListView.h"

#import "LB_GoodsClassCollectionView.h"

@interface LB_GoodsClassListViewModel()

@property(strong,nonatomic)LB_GoodsClassListView *listView;

@property(strong,nonatomic)LB_GoodsClassCollectionView *collectionView;


@end
@implementation LB_GoodsClassListViewModel

-(void)initUI{
    
    
    self.listView = [[LB_GoodsClassListView alloc]init];
    [self.viewController.view addSubview:self.listView];
    [self.listView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LB_View.mas_top).offset(109);
        make.left.equalTo(self.LB_View.mas_left).offset(0);
        make.right.equalTo(self.LB_View.mas_right).offset(0);
        make.bottom.equalTo(self.LB_View.mas_bottom).offset(0);
    }];
    
    self.collectionView = [[LB_GoodsClassCollectionView alloc]init];
    [self.viewController.view addSubview:self.collectionView];
    [self.collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LB_View.mas_top).offset(109);
        make.left.equalTo(self.LB_View.mas_left).offset(0);
        make.right.equalTo(self.LB_View.mas_right).offset(0);
        make.bottom.equalTo(self.LB_View.mas_bottom).offset(0);
    }];

}

-(void)setIsList:(BOOL)isList
{
    self.listView.hidden = isList;
    self.collectionView.hidden = !isList;
    
    
}



@end
