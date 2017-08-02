//
//  LB_GoodsClassRankSelectView.h
//  NewCuo
//
//  Created by 林波 on 2017/8/2.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LB_GoodsClassRankSelectView : UIView

typedef void(^ClickItem)(void);

@property(strong,nonatomic)NSMutableArray *list;

@property(copy,nonatomic) NSString *selectString;

@property(strong,nonatomic)ClickItem clickItem;

-(UITableView*)tableView;



@end
