//
//  LB_GoodsClassListView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/31.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsClassListView.h"
#import "LB_GoodsCell.h"



@interface LB_GoodsClassListView()<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)UITableView *tableView;

@end


@implementation LB_GoodsClassListView

-(id)init{
    
    self = [super init];
    if (self) {
        
        [self initUI];
        
    }
    return self;
}

-(void)initUI{
    
    self.tableView = [[UITableView alloc]init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.offset(0);
    }];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 120;
    
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *yyy = @"cellForRowAtIndexPath";
    
    LB_GoodsCell * cell = [tableView dequeueReusableCellWithIdentifier:yyy];
    if (!cell) {
        cell = [[LB_GoodsCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:yyy];
    }
    return cell;
}


@end
