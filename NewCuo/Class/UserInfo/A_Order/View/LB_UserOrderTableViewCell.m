//
//  LB_UserOrderTableViewCell.m
//  NewCuo
//
//  Created by 林波 on 2017/8/3.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserOrderTableViewCell.h"
#import "LB_UserOrderTableCellContentView.h"

@interface LB_UserOrderTableViewCell()

@property(strong,nonatomic)UIView *view;

@property(strong,nonatomic)UILabel *orderLab;

@property(strong,nonatomic)UILabel *stateLab;

@property(strong,nonatomic)UIView *moreView;

@property(strong,nonatomic)UIButton *cancleBtn;

@property(strong,nonatomic)UIButton *payBtn;

@property(strong,nonatomic)UIButton *backBtn;

@property(strong,nonatomic)UIButton *backDetailBtn;

@property(strong,nonatomic)UIButton *appraiseBtn;

@property(strong,nonatomic)UILabel *totalLab;

@property(strong,nonatomic)UIView *btnView;

@property(strong,nonatomic)UILabel *payType;


@end


@implementation LB_UserOrderTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.backgroundColor = K_BACKGROUND_COLOR;
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    UILabel *(^markLine)() = ^(){
        UILabel *lab = [[UILabel alloc]init];
        lab.backgroundColor = K_COLOR_LINE;
        return lab;
    };
    
    
    
    
    self.view = [[UIView alloc]init];
    self.view.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.view];
    [self.view mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.mas_top).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(-10);
        
    }];
    
    
    
    UILabel *line1 = markLine();
    [self.view addSubview:line1];
    [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(45);
        make.right.equalTo(self.view.mas_right).offset(0);
        make.left.equalTo(self.view.mas_left).offset(0);
        make.height.offset(0.5);
    }];
    
    UILabel *lab = [[UILabel alloc]init];
    lab.text = @"订单号:";
    lab.font = [UIFont systemFontOfSize:13];
    [self.view addSubview:lab];
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(0);
        make.width.offset(48);
        make.left.equalTo(self.view.mas_left).offset(14);
        make.bottom.equalTo(line1.mas_top).offset(0);
    }];
    
    self.orderLab = [[UILabel alloc]init];
    self.orderLab.text = @"dfwefsd123123sfsf";
    self.orderLab.font = [UIFont systemFontOfSize:13];
    [self.view addSubview:self.orderLab];
    [self.orderLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(0);
        make.width.offset(220);
        make.left.equalTo(lab.mas_right).offset(0);
        make.bottom.equalTo(line1.mas_top).offset(0);
    }];

    
    self.stateLab = [[UILabel alloc]init];
    self.stateLab.text = @"交易关闭";
    self.stateLab.textAlignment = NSTextAlignmentCenter;
    self.stateLab.textColor = K_RED_COLOR;
    self.stateLab.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:self.stateLab];
    [self.stateLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(0);
        make.right.equalTo(self.view.mas_right).offset(0);
        make.left.equalTo(self.orderLab.mas_right).offset(0);
        make.bottom.equalTo(line1.mas_top).offset(0);
    }];
    
    
    
    
    
    self.btnView = [[UIView alloc]init];
    [self.view addSubview:self.btnView];
    [self.btnView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view.mas_bottom).offset(0);
        make.right.equalTo(self.view.mas_right).offset(0);
        make.left.equalTo(self.view.mas_left).offset(0);
        make.height.offset(34);
    }];
    
    
    [self initBtn];
    
    
    
    self.totalLab = [[UILabel alloc]init];
    self.totalLab.text = @"¥1231213";
    self.totalLab.textAlignment = NSTextAlignmentLeft;
    self.totalLab.font = [UIFont systemFontOfSize:13];
    self.totalLab.textColor = K_RED_COLOR;
    [self.view addSubview:self.totalLab];
    [self.totalLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.btnView.mas_top).offset(-2);
        make.right.equalTo(self.view.mas_right).offset(-14);
        make.height.offset(24);
        make.width.offset(80);
    }];
    
    self.payType = [[UILabel alloc]init];
    self.payType.text = @"实付款:";
    self.payType.textAlignment = NSTextAlignmentRight;
    self.payType.font = [UIFont systemFontOfSize:13];
    self.payType.textColor = [UIColor grayColor];
    [self.view addSubview:self.payType];
    [self.payType mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.btnView.mas_top).offset(-2);
        make.right.equalTo(self.totalLab.mas_left).offset(-4);
        make.height.offset(24);
        make.width.offset(80);
    }];

    UILabel *line2 = markLine();
    [self.view addSubview:line2];
    [line2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.totalLab.mas_top).offset(-5);
        make.right.equalTo(self.view.mas_right).offset(0);
        make.left.equalTo(self.view.mas_left).offset(0);
        make.height.offset(0.5);
    }];
    
    self.moreView = [[UIView alloc]init];
    [self.view addSubview:self.moreView];
    [self.moreView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(line1.mas_bottom).offset(0);
        make.right.equalTo(self.view.mas_right).offset(0);
        make.left.equalTo(self.view.mas_left).offset(0);
        make.bottom.equalTo(line2.mas_top).offset(0);
    }];


   

    
}
-(void)initBtn{
    
    UIButton *(^markBtn)()=^(){
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.layer.cornerRadius = 3;
        btn.layer.borderWidth = 0.5;
        btn.titleLabel.font = [UIFont systemFontOfSize:11];
        return btn;
    };
    

    
    
    self.cancleBtn = markBtn();
    [self.cancleBtn setTitle:@"取消订单" forState:UIControlStateNormal];
    [self.cancleBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    self.cancleBtn.layer.borderColor = [UIColor grayColor].CGColor;
    [self.btnView addSubview:self.cancleBtn];
    [self.cancleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.btnView.mas_bottom).offset(-5);
        make.right.equalTo(self.btnView.mas_right).offset(-14);
        make.size.mas_equalTo(CGSizeMake(0, 24));
    }];
    
    
    self.backBtn = markBtn();
    [self.backBtn setTitle:@"申请退款" forState:UIControlStateNormal];
    [self.backBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    self.backBtn.layer.borderColor = [UIColor grayColor].CGColor;
    [self.btnView addSubview:self.backBtn];
    [self.backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.btnView.mas_bottom).offset(-5);
        make.right.equalTo(self.cancleBtn.mas_left).offset(-8);
        make.size.mas_equalTo(CGSizeMake(0, 24));
    }];
    
    self.payBtn = markBtn();
    [self.payBtn setTitle:@"立即支付" forState:UIControlStateNormal];
    [self.payBtn setBackgroundColor:K_RED_COLOR];
    self.payBtn.layer.borderColor = K_RED_COLOR.CGColor;
    [self.btnView addSubview:self.payBtn];
    [self.payBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.btnView.mas_bottom).offset(-5);
        make.right.equalTo(self.backBtn.mas_left).offset(-8);
        make.size.mas_equalTo(CGSizeMake(0, 24));
    }];
    
    self.appraiseBtn = markBtn();
    [self.appraiseBtn setTitle:@"评价" forState:UIControlStateNormal];
    [self.appraiseBtn setTitleColor:K_RED_COLOR forState:UIControlStateNormal];
    self.appraiseBtn.layer.borderColor = K_RED_COLOR.CGColor;
    [self.btnView addSubview:self.appraiseBtn];
    [self.appraiseBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.btnView.mas_bottom).offset(-5);
        make.right.equalTo(self.payBtn.mas_left).offset(-8);
        make.size.mas_equalTo(CGSizeMake(0, 24));
    }];
    
    self.backDetailBtn = markBtn();
    [self.backDetailBtn setTitle:@"退款详情" forState:UIControlStateNormal];
    [self.backDetailBtn setTitleColor:K_RED_COLOR forState:UIControlStateNormal];
    self.backDetailBtn.layer.borderColor = K_RED_COLOR.CGColor;
    [self.btnView addSubview:self.backDetailBtn];
    [self.backDetailBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.btnView.mas_bottom).offset(-5);
        make.right.equalTo(self.appraiseBtn.mas_left).offset(-8);
        make.size.mas_equalTo(CGSizeMake(0, 24));
    }];

    
}




-(void)initMoreView{
    
    //移除所有的子氏图
    [self.moreView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    for (int i = 0; i<4; i++) {
        UIButton *btn  = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:[UIImage imageNamed:@"test"] forState:UIControlStateNormal];
        [self.moreView addSubview:btn];
        [btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.moreView.mas_top).offset(8);
            make.left.equalTo(self.moreView.mas_left).offset(14+(KSCREENWIDTH/5+5)*i);
            make.bottom.equalTo(self.moreView.mas_bottom).offset(-8);
            make.width.offset(KSCREENWIDTH/5);
        }];
    }
}

-(void)initNotBtnView{
    
    [self.btnView remakeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view.mas_bottom).offset(0);
        make.right.equalTo(self.view.mas_right).offset(0);
        make.left.equalTo(self.view.mas_left).offset(0);
        make.height.offset(0);
    }];
    
    
}

-(void)initListView{
    
    //移除所有的子氏图
    [self.moreView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    for (int i = 0; i<1; i++) {
        LB_UserOrderTableCellContentView *contentView = [[LB_UserOrderTableCellContentView alloc]init];
        [self.moreView addSubview:contentView];
        [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.moreView.mas_top).offset(0);
            make.right.equalTo(self.moreView.mas_right).offset(0);
            make.left.equalTo(self.moreView.mas_left).offset(0);
            make.height.offset(80);
        }];
    }
}



-(void)setContentType:(ORDERCONENTTYPE)contentType{
    _contentType = contentType;
    switch (contentType) {
        case ORDERCONENTTYPE_LIST:
            [self initListView];
            break;
        case ORDERCONENTTYPE_MORE:
            [self initMoreView];
            break;
        case ORDERCONENTTYPE_LIST_NOBTN:
            [self initListView];
            [self initNotBtnView];
            break;
        case ORDERCONENTTYPE_MORE_NOBTN:
            [self initMoreView];
            [self initNotBtnView];
            break;
        default:
            break;
    }
    
    
    
    
}

-(void)setDic:(NSDictionary *)dic
{
    
    
    
    
    
    
    
    
    
    
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
