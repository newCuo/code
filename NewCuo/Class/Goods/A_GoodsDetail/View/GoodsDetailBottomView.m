//
//  GoodsDetailBottomView.m
//  NewCuo
//
//  Created by lirch on 2017/7/30.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "GoodsDetailBottomView.h"
@interface GoodsDetailBottomView ()
@property (strong,nonatomic)UIView *bottomView;

@property (strong,nonatomic)UIView *seleView;//选择商品数量，规格等内容的view
@end

@implementation GoodsDetailBottomView

-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor =K_BACKGROUND_COLOR;
        [self initUI];
        [self bindingEvent];
    }
    return self;
}

-(void)initUI{
    self.bottomView = [[UIView alloc]init];
    [self addSubview:self.bottomView];
    [self.bottomView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    self.bottomView.backgroundColor = [UIColor colorWithHexString:@"333333"];
    
    self.followBtn = [[CustomButton alloc]initWithFrame:CGRectZero imageAndtitleLocation:imageTop];
    [self.bottomView addSubview:self.followBtn];
    [self.followBtn makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.bottomView.leading);
        make.top.equalTo(self.bottomView.top);
        make.height.equalTo(self.bottomView.height);
        make.width.equalTo(self.bottomView.height);
    }];
    [self.followBtn setTitle:@"关注" forState:(UIControlStateNormal)];
    [self.followBtn setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    [self.followBtn setImage:[UIImage imageNamed:@"heart_transparent"] forState:(UIControlStateNormal)];
    
    self.servicesBtn = [[CustomButton alloc]initWithFrame:CGRectZero imageAndtitleLocation:imageTop];;
    [self.bottomView addSubview:self.servicesBtn];
    [self.servicesBtn makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.followBtn.trailing);
        make.top.equalTo(self.followBtn.top);
        make.width.height.equalTo(self.followBtn);
    }];
    [self.servicesBtn setTitle:@"客服" forState:(UIControlStateNormal)];
    [self.servicesBtn setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    [self.servicesBtn setImage:[UIImage imageNamed:@"customer_service"] forState:(UIControlStateNormal)];
    
    self.shoppingCartBtn = [[CustomButton alloc]initWithFrame:CGRectZero imageAndtitleLocation:imageTop];;
    [self.bottomView addSubview:self.shoppingCartBtn];
    [self.shoppingCartBtn makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.servicesBtn.trailing);
        make.top.equalTo(self.followBtn.top);
        make.width.height.equalTo(self.followBtn);
    }];
    [self.shoppingCartBtn setTitle:@"购物车" forState:(UIControlStateNormal)];
    [self.shoppingCartBtn setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    [self.shoppingCartBtn setImage:[UIImage imageNamed:@"shopping_cart"] forState:(UIControlStateNormal)];
    
    self.addToShoppingCartBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [self.bottomView addSubview:self.addToShoppingCartBtn];
    [self.addToShoppingCartBtn makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.shoppingCartBtn.trailing);
        make.top.equalTo(self.followBtn.top);
        make.height.equalTo(self.followBtn);
//        make.width.equalTo((self.bottomView.width - followBtn.width)/2);
    }];
    self.addToShoppingCartBtn.backgroundColor = [UIColor colorWithHexString:@"ffa526"],
    [self.addToShoppingCartBtn setTitle:@"加入购物车" forState:(UIControlStateNormal)];
    self.addToShoppingCartBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    
    self.buyNowBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [self.bottomView addSubview:self.buyNowBtn];
    [self.buyNowBtn makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.addToShoppingCartBtn.trailing);
        make.top.equalTo(self.followBtn.top);
        make.height.equalTo(self.followBtn);
        make.width.equalTo(self.addToShoppingCartBtn);
        make.trailing.equalTo(self.bottomView);
    }];
    self.buyNowBtn.backgroundColor = [UIColor colorWithHexString:@"e63a59"],
    [self.buyNowBtn setTitle:@"立即购买" forState:(UIControlStateNormal)];
    self.buyNowBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    
    self.seleView = [UIView new];
    [self addSubview:self.seleView];
    [self.seleView makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.equalTo(self);
        make.top.equalTo(self.bottom);
        make.height.equalTo(KSCREENHEIGHT);
    }];
}
-(void)bindingEvent{
//    @weakify(self);
//    [[self.addToShoppingCartBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
//        @strongify(self);
//        
//        NSLog(@"addddd");
//        
//    }];
}







@end
