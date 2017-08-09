//
//  LB_UserOrderContentView.h
//  NewCuo
//
//  Created by 林波 on 2017/8/3.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LB_UserOrderContentView : UIView

@property(strong,nonatomic)NSMutableArray * list;

-(UITableView*)tableView;

@end
