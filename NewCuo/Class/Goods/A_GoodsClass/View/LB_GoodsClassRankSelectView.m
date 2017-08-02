//
//  LB_GoodsClassRankSelectView.m
//  NewCuo
//
//  Created by 林波 on 2017/8/2.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsClassRankSelectView.h"

@interface LB_GoodsClassRankSelectView()<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)UITableView *tableView;

@end

@implementation LB_GoodsClassRankSelectView

-(id)init{
    
    self = [super init];
    if (self) {
        self.backgroundColor = K_COLOR_RGBA(0, 0, 0, 0.2);
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    self.tableView = [[UITableView alloc]init];
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.offset(0);
    }];
    self.tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.list.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *yyyy = @"cellForRowAtIndexPath";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:yyyy];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:yyyy];
    }
    cell.textLabel.text = self.list[indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:13];
    return cell;
    
}
-(void)setList:(NSMutableArray *)list
{
    _list = list;
    CGFloat height = list.count*44.00f;
    [self.tableView remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.top);
        make.left.equalTo(self.left);
        make.right.equalTo(self.right);
        make.height.offset(height);
    }];
    [self.tableView reloadData];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    self.selectString = self.list[indexPath.row];
    self.clickItem();
    
}


@end
