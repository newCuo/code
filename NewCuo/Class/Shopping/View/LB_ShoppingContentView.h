//
//  LB_ShoppingContentView.h
//  NewCuo
//
//  Created by 林波 on 2017/8/16.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LB_ShoppingContentView : UIView
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentHeight;
-(UITableView*)tableView;
-(NSMutableArray*)list;
@end
