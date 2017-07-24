//
//  LB_SearchContentView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_SearchContentView.h"
#import "LB_SearchEmptyView.h"
#import "LB_SearchClickEmptyView.h"
#import "LB_SearchModel.h"

@interface LB_SearchContentView()<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)LB_SearchEmptyView *emptyView;

@property(strong,nonatomic)LB_SearchClickEmptyView *clickEmpty;

@property(strong,nonatomic)UITableView *tableView;



@end

@implementation LB_SearchContentView

-(id)initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
        [self bindingEvent];
    }
    return self;
}
-(void)initUI{
    
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor whiteColor];
    [self addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.height.offset(50);
    }];
    
    UILabel *historyLab =[[UILabel alloc]init];
    historyLab.font = [UIFont systemFontOfSize:15];
    historyLab.text = @"历史搜索";
    [view addSubview:historyLab];
    [historyLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(14);
        make.centerY.equalTo(view.mas_centerY).offset(0);
    }];
    
    UILabel *line = [[UILabel alloc]init];
    line.backgroundColor = K_LINE_COLOR;
    [view addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.bottom.equalTo(view.mas_bottom).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.height.offset(0.5);

    }];
    
    
    self.emptyView = [[LB_SearchEmptyView alloc]init];
    [self addSubview:self.emptyView];
    [self.emptyView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view.mas_bottom).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
    }];
    
    
    self.tableView = [[UITableView alloc]init];
    self.tableView.backgroundColor = K_BACKGROUND_COLOR;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view.mas_bottom).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
    }];
    
    

    
    self.clickEmpty = [[LB_SearchClickEmptyView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, 140)];
    self.tableView.tableFooterView = self.clickEmpty;
    
    
    
}

-(void)bindingEvent{
    
    @weakify(self);
    [[self.clickEmpty.emptyBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        
        [LB_SearchModel clearSearch];
        self.list = [NSMutableArray new];
        [self.tableView reloadData];
        
    }];
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
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
    
    static NSString *identifier = @"Identifier";
    UITableViewCell *cell  =[tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell  =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.font = [UIFont systemFontOfSize:14];
    cell.textLabel.text = self.list[indexPath.row];
    return cell;
}

-(void)setList:(NSMutableArray *)list{
    
    _list = list;
    self.tableView.hidden = self.list.count>0?NO:YES;
    [self.tableView reloadData];
    
    
    
}
-(void)dealloc
{
    
    NSLog(@"33333333");
    
}


@end
