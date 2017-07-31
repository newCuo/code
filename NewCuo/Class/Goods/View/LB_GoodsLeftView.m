//
//  LB_GoodsLeftView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/28.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsLeftView.h"


@interface LB_GoodsLeftView()<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)UITableView *tableView;


@end

@implementation LB_GoodsLeftView

-(id)init{
    
    self = [super init];
    
    if (self) {
        [self initUI];
    }
    return self;
}
-(void)initUI{
    
    self.tableView = [[UITableView alloc]init];
    self.tableView.backgroundColor = K_BACKGROUND_COLOR;
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.scrollEnabled = NO;
    self.tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    [self addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.offset(0);
    }];
    
    self.tableView.layer.borderColor = [UIColor grayColor].CGColor;
    self.tableView.layer.borderWidth = 1.0f;
    
    

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.list.count;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
}

- (void)viewDidLayoutSubviews
{
    if ([_tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [_tableView setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([_tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [_tableView setLayoutMargins:UIEdgeInsetsZero];
    }
}




-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ttt = @"numberOfRowsInSection";
    LB_GoodsHomeCell *cell  = [tableView dequeueReusableCellWithIdentifier:ttt];
    if (!cell) {
        cell = [[LB_GoodsHomeCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ttt];
    }
    cell.model = self.list[indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

-(void)setList:(NSMutableArray *)list
{
    _list = list;
    if (_list.count>0) {
        self.selectGoodsLeftModel = list[0];
    }
    [self.tableView reloadData];

    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    

    self.selectGoodsLeftModel.isSelect = NO;
    LB_GoodsLeftModel *selectModel = self.list[indexPath.row];
    selectModel.isSelect = YES;
    self.selectGoodsLeftModel = selectModel;
    [self.tableView reloadData];
    
    
}

-(void)setSelectGoodsLeftModel:(LB_GoodsLeftModel *)selectGoodsLeftModel
{
    
    _selectGoodsLeftModel = selectGoodsLeftModel;
    NSDictionary *dic =@{@"name":_selectGoodsLeftModel.name};
    [[NSNotificationCenter defaultCenter] postNotificationName:KNTCHANGEGOODSCLASS object:@"KNTCHANGEGOODSCLASS" userInfo:dic];
    
}


@end
