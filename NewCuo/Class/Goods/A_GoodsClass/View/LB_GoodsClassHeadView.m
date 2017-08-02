//
//  LB_GoodsClassHeadView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/31.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsClassHeadView.h"
@interface LB_GoodsClassHeadView()

@property(strong,nonatomic)UIButton *UpBtn; //最新上架

@property(strong,nonatomic)UIButton *sellGoodBtn; //销量

@property(strong,nonatomic)UIButton *priceImageBtn; //价格图标

@property(strong,nonatomic)UIButton *priceBtn;  //价格

@property(strong,nonatomic)UIButton *filterBtn; //筛选

@property(strong,nonatomic)UILabel *upTitleLab;

@property(strong,nonatomic)UILabel *priceLab;

@property(strong,nonatomic)UIButton *showViewBtn;

@property(strong,nonatomic)UILabel *filterLab;

@property(assign,nonatomic)HEADTYPE type;

@end

@implementation LB_GoodsClassHeadView

-(id)init{
    
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self initUI];
        [self bingingEvent];
    }
    return self;
}

-(void)initUI{
    
     /*****************************   排序   ****************************************/
    
    UIView *view = [[UIView alloc]init];
    [self addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top);
        make.bottom.equalTo(self.mas_bottom);
        make.left.equalTo(self.mas_left);
        make.width.offset(KSCREENWIDTH/4);
    }];
    
    self.upTitleLab = [[UILabel alloc]init];
    self.upTitleLab.font = [UIFont systemFontOfSize:14];
    self.upTitleLab.textAlignment = NSTextAlignmentCenter;
    self.upTitleLab.textColor = K_RED_COLOR;
    [view addSubview:self.upTitleLab];
    self.upTitleLab.text = @"默认排列";
    [self.upTitleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.equalTo(view.mas_centerY);
        make.centerX.equalTo(view.mas_centerX);
        make.size.mas_equalTo(CGSizeMake(65, 20));
        
    }];
    
    self.showViewBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [self.showViewBtn setImage:[UIImage imageNamed:@"angle"] forState:UIControlStateNormal];
    [self.showViewBtn setImage:[UIImage imageNamed:@"down_s"] forState:UIControlStateSelected];
    [view addSubview:self.showViewBtn];
    [self.showViewBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(view.mas_centerY).offset(0);
        make.left.equalTo(self.upTitleLab.mas_right).offset(0);
        make.size.mas_equalTo(CGSizeMake(11, 11));
    }];
    
    
    self.UpBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [view addSubview:self.UpBtn];
    [self.UpBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.offset(0);
    }];
    
    
     /*****************************   销量   ****************************************/
    
    self.sellGoodBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.sellGoodBtn setTitle:@"销量" forState:UIControlStateNormal];
    self.sellGoodBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [self.sellGoodBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.sellGoodBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.sellGoodBtn setTitleColor:K_COLOR_RGB(240, 10, 10) forState:UIControlStateSelected];
    [self addSubview:self.sellGoodBtn];
    [self.sellGoodBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top);
        make.bottom.equalTo(self.mas_bottom);
        make.left.equalTo(view.mas_right);
        make.width.offset(KSCREENWIDTH/4);
    }];
    
    
    
   
    
     /*****************************   价格   ****************************************/
    
    UIView *view1 = [[UIView alloc]init];
    [self addSubview:view1];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top);
        make.bottom.equalTo(self.mas_bottom);
        make.left.equalTo(self.sellGoodBtn.mas_right);
        make.width.offset(KSCREENWIDTH/4);
    }];
    
    self.priceLab = [[UILabel alloc]init];
    self.priceLab.font = [UIFont systemFontOfSize:14];
    self.priceLab.textAlignment = NSTextAlignmentCenter;
    self.priceLab.textColor = [UIColor grayColor];
    [view1 addSubview:self.priceLab];
    self.priceLab.text = @"价格";
    [self.priceLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(view1.mas_centerY);
        make.centerX.equalTo(view1.mas_centerX);
        make.size.mas_equalTo(CGSizeMake(32, 20));
    }];
    
    self.priceImageBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [self.priceImageBtn setImage:[UIImage imageNamed:@"angle"] forState:UIControlStateNormal];
    [self.priceImageBtn setImage:[UIImage imageNamed:@"down_s"] forState:UIControlStateSelected];
    [view1 addSubview:self.priceImageBtn];
    [self.priceImageBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(view1.mas_centerY).offset(0);
        make.left.equalTo(self.priceLab.mas_right).offset(0);
        make.size.mas_equalTo(CGSizeMake(16, 8));
    }];

    
    self.priceBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [view1 addSubview:self.priceBtn];
    [self.priceBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.offset(0);
    }];
    
    /*****************************   筛选   ****************************************/
    
    UIView *view2 = [[UIView alloc]init];
    [self addSubview:view2];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top);
        make.bottom.equalTo(self.mas_bottom);
        make.left.equalTo(view1.mas_right);
        make.width.offset(KSCREENWIDTH/4);
    }];
    self.filterLab = [[UILabel alloc]init];
    self.filterLab.font = [UIFont systemFontOfSize:14];
    self.filterLab.textAlignment = NSTextAlignmentCenter;
    self.filterLab.textColor = K_COLOR_RGB(240, 10, 10);
    [view2 addSubview:self.filterLab];
    self.filterLab.text = @"筛选";
    [self.filterLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(view2.mas_centerY);
        make.centerX.equalTo(view2.mas_centerX);
        make.size.mas_equalTo(CGSizeMake(32, 20));
    }];
    
    UIImageView *imageV = [[UIImageView alloc]init];
    imageV.image = [UIImage imageNamed:@"filter_selected"];
    [view2 addSubview:imageV];
    [imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(view2.mas_centerY).offset(0);
        make.left.equalTo(self.filterLab.mas_right).offset(0);
        make.size.mas_equalTo(CGSizeMake(12, 12));

    }];
    
    self.filterBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [view2 addSubview:self.filterBtn];
    [self.filterBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.offset(0);
    }];

    
    /*****************************   线   ****************************************/
    
    UILabel *line = [[UILabel alloc]init];
    line.backgroundColor = K_LINE_COLOR;
    [self addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.mas_bottom).offset(-0.5);
        make.height.offset(0.5);
        make.left.equalTo(self.mas_left);
        make.right.equalTo(self.mas_right);
    }];
    
}

-(void)bingingEvent{
    
    
    @weakify(self);
    [[self.UpBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(UIButton *btn) {
        @strongify(self);
        btn.selected = !btn.selected;
        self.showViewBtn.selected = btn.selected;
        self.type = btn.selected?HEADTYPE_RANK:HEADTYPE_RANK_CLOSED;
    }];
    
    
    [[self.sellGoodBtn rac_signalForControlEvents:UIControlEventTouchDown]subscribeNext:^(UIButton *btn) {
        btn.selected = !btn.selected;
        self.type = HEADTYPE_SELL;
    }];
    
    [[self.priceBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(UIButton *btn) {
        self.priceImageBtn.selected = !btn.selected;
        btn.selected = !btn.selected;
        self.type = HEADTYPE_PRICE;
    }];
    
     [[self.filterBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
         self.type = HEADTYPE_FILTER;
     }];
}

-(void)setType:(HEADTYPE)type
{
    
    self.clickHeadType(type);
  
    switch (type) {
        case HEADTYPE_RANK:
            
            self.priceLab.textColor = [UIColor grayColor];
            self.sellGoodBtn.selected = NO;
            break;
        case HEADTYPE_SELL:
            self.showViewBtn.selected = NO;
            self.UpBtn.selected = NO;
            self.upTitleLab.textColor = [UIColor grayColor];
            self.priceLab.textColor = [UIColor grayColor];
            self.sellGoodBtn.selected = YES;
            break;
        case HEADTYPE_PRICE:
            self.showViewBtn.selected = NO;
            self.UpBtn.selected = NO;
            self.priceLab.textColor = K_RED_COLOR;
            self.upTitleLab.textColor = [UIColor grayColor];
            self.sellGoodBtn.selected = NO;
        default:
            break;
    }
}

-(void)setSelectString:(NSString *)selectString
{
    if (selectString.length<1) {
        return;
    }
    _selectString = selectString;
    self.upTitleLab.text = selectString;
    self.upTitleLab.textColor = K_RED_COLOR;
    self.showViewBtn.selected = NO;
    self.UpBtn.selected = NO;
}


@end
