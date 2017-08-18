//
//  LB_ShoppingContentTableViewCell.h
//  NewCuo
//
//  Created by 林波 on 2017/8/16.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LB_StroeModel.h"
#import "LB_GoodsModel.h"
typedef void(^ReloadTableView)();

@interface LB_ShoppingContentTableViewCell : UITableViewCell

@property(assign,nonatomic)BOOL isOpen;

@property(strong,nonatomic)LB_StroeModel *stroeModel;

@property(strong,nonatomic)LB_GoodsModel *goodsModel;

@property(strong,nonatomic)ReloadTableView reloadTableView;

@end
