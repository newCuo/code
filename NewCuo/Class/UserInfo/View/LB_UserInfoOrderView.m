//
//  LB_UserInfoOrderView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserInfoOrderView.h"


@interface LB_UserInfoOrderView()

@property(strong,nonatomic)UIButton *lookAllOrderBtn;





@end


@implementation LB_UserInfoOrderView

-(id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self initUI];
        [self bindingEvent];
    }
    return self;
}

-(void)initUI{
    
    //线
    UILabel *topline = [[UILabel alloc]init];
    topline.backgroundColor = K_DARKLINE_COLOR;
    [self addSubview:topline];
    [topline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.top.equalTo(self.mas_top).offset(0);
        make.height.offset(0.5);
    }];
    
    //线
    UILabel *middleline = [[UILabel alloc]init];
    middleline.backgroundColor = K_DARKLINE_COLOR;
    [self addSubview:middleline];
    [middleline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.top.equalTo(self.mas_top).offset(50);
        make.height.offset(0.5);
    }];

    
    UIImageView *imageV = [[UIImageView alloc]init];
    imageV.image = [UIImage imageNamed:@"order"];
    [self addSubview:imageV];
    [imageV mas_makeConstraints:^(MASConstraintMaker *make) {
      
        make.top.equalTo(topline.mas_bottom).offset(10);
        make.left.equalTo(self.mas_left).offset(14);
        make.size.mas_equalTo(CGSizeMake(30, 30));
        
    }];
    
    
    
    UILabel *lab = [[UILabel alloc]init];
    lab.text = @"我的订单";
    lab.textColor = [UIColor darkTextColor];
    lab.font = [UIFont systemFontOfSize:15];
    [self addSubview:lab];
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(topline.mas_bottom).offset(0);
        make.left.equalTo(imageV.mas_right).offset(10);
        make.bottom.equalTo(middleline.mas_top).offset(0);
        make.width.offset(80);
    }];
  
    
    self.lookAllOrderBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.lookAllOrderBtn setTitle:@"查看全部订单 >" forState:UIControlStateNormal];
    [self.lookAllOrderBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    self.lookAllOrderBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [self addSubview:self.lookAllOrderBtn];
    [self.lookAllOrderBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(topline.mas_bottom).offset(0);
        make.right.equalTo(self.mas_right).offset(-10);
        make.bottom.equalTo(middleline.mas_top).offset(0);
        make.width.offset(110);
    }];
    

    NSDictionary *dic = @{@"title":@"待付款",@"Image":@"c_pay.png",@"type":@"1"};
    LB_CustormView *payView = [[LB_CustormView alloc]initWithDic:dic clickOrderItem:^(int type) {
        self.clickOrderItem(type);
    }];
    [self addSubview:payView];
    [payView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(middleline.mas_bottom).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(KSCREENWIDTH/4);
    }];
    
    NSDictionary *dic1 = @{@"title":@"待收获",@"Image":@"c_notconsign.png",@"type":@"2"};
    LB_CustormView *getView = [[LB_CustormView alloc]initWithDic:dic1 clickOrderItem:^(int type) {
        self.clickOrderItem(type);
    }];
    [self addSubview:getView];
    [getView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(middleline.mas_bottom).offset(0);
        make.left.equalTo(payView.mas_right).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(KSCREENWIDTH/4);
    }];
    
    
    NSDictionary *dic2 = @{@"title":@"待评价",@"Image":@"c_comment.png",@"type":@"3"};
    LB_CustormView *commentView = [[LB_CustormView alloc]initWithDic:dic2 clickOrderItem:^(int type) {
        self.clickOrderItem(type);
    }];
    [self addSubview:commentView];
    [commentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(middleline.mas_bottom).offset(0);
        make.left.equalTo(getView.mas_right).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        
        make.width.offset(KSCREENWIDTH/4);
    }];
    
    NSDictionary *dic3 = @{@"title":@"退款/退货",@"Image":@"c_exchange.png",@"type":@"4"};
    LB_CustormView *backPayView = [[LB_CustormView alloc]initWithDic:dic3 clickOrderItem:^(int type) {
        self.clickOrderItem(type);
    }];
    [self addSubview:backPayView];
    [backPayView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(middleline.mas_bottom).offset(0);
        make.left.equalTo(commentView.mas_right).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(KSCREENWIDTH/4);
    }];

}
-(void)bindingEvent{
    
    @weakify(self);
    [[self.lookAllOrderBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        self.clickOrderItem(ORDERTYPE_ALL);
    }];
    
    
}


@end
