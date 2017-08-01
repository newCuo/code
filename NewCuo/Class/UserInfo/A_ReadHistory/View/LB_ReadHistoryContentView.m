//
//  LB_ReadHistoryContentView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/27.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_ReadHistoryContentView.h"
#import "LB_GoodsCell.h"

@interface LB_ReadHistoryContentView()<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)UITableView *tableView;

@end

@implementation LB_ReadHistoryContentView

-(id)init{
    self = [super init];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    self.tableView  = [[UITableView alloc]init];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.backgroundColor = K_BACKGROUND_COLOR;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(0);
    }];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 120;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *tt = @"MASConstraintMaker";
    LB_GoodsCell *cell  = [tableView dequeueReusableCellWithIdentifier:tt];
    if (!cell) {
        cell = [[LB_GoodsCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tt];
        cell.isHideRead = YES;
    }
    
    return cell;
    
}

@end
