//
//  LB_UserOrderContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/8/3.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserOrderContentViewModel.h"
#import "LB_UserOrderContentView.h"

@interface LB_UserOrderContentViewModel()

@property(strong,nonatomic)LB_UserOrderContentView *contentView;

@end
@implementation LB_UserOrderContentViewModel

-(void)initUI{
    
    self.contentView = [[LB_UserOrderContentView alloc]initWithFrame:CGRectMake(0, 64, KSCREENWIDTH, KSCREENHEIGHT-64)];
    [self.LB_View addSubview:self.contentView];
        
}

-(void)NetWorking{
    
    NSMutableArray *list = [[NSMutableArray alloc]init];
    
    NSDictionary * dic =  @{@"type":@"1",@"list":@[@"123"],@"btn":@[@"1",@"2"]};
    [list addObject:dic];
     NSDictionary * dic1 =  @{@"type":@"2",@"list":@[@"123",@"23"],@"btn":@[@"3"]};
     [list addObject:dic1];
    NSDictionary * dic2 =  @{@"type":@"3",@"list":@[@"123",@"23"],@"btn":@[@"4"]};
    [list addObject:dic2];
    NSDictionary * dic3 =  @{@"type":@"4",@"list":@[@"123",@"23",@"2432"],@"btn":@[@"5"]};
    [list addObject:dic3];
    NSDictionary * dic4 =  @{@"type":@"3",@"list":@[@"123",@"23",@"2432"],@"btn":@[]};
    [list addObject:dic4];
    
    self.contentView.list = list;
    [self.contentView.tableView reloadData];

    
}

@end
