//
//  GoodsSpecificationView.m
//  NewCuo
//
//  Created by lirch on 2017/8/18.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "GoodsSpecificationView.h"
#import "LB_PuleAndDownCustomView.h"
@interface GoodsSpecificationView ()
{
    
}
@property (strong,nonatomic)UIView *transparentView;
@end
@implementation GoodsSpecificationView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self initUI];
        [self bindingEvent];
    }
    return self;
}
-(void)initUI{
    self.transparentView = [UIView new];
    [self addSubview:self.transparentView];
    [self.transparentView makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.equalTo(self);
        make.height.equalTo(self).dividedBy(2);
    }];
    self.transparentView.backgroundColor = [UIColor clearColor];
    self.transparentView.userInteractionEnabled = YES;
    self.tap = [[UITapGestureRecognizer alloc] init];
    [self.transparentView addGestureRecognizer:self.tap];
    
    self.infoView = [UIView new];
    [self addSubview:self.infoView];
    [self.infoView makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self);
        make.top.equalTo(self.bottom);
        make.height.offset(320);
    }];
    self.infoView.backgroundColor = [UIColor whiteColor];
    
    UIView *imgBGView = [UIView new];
    [self.infoView addSubview:imgBGView];
    [imgBGView makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.infoView).offset(-15);
        make.left.equalTo(self.infoView).offset(15);
        make.size.equalTo(CGSizeMake(90, 90));
    }];
    imgBGView.backgroundColor = [UIColor whiteColor];
    imgBGView.layer.cornerRadius = 5.0f;
    imgBGView.layer.masksToBounds = YES;
    imgBGView.layer.borderWidth = 0.5f;
    imgBGView.layer.borderColor = K_COLOR_LINE.CGColor;
    
    UIImageView *goodsImgV = [UIImageView new];
    [imgBGView addSubview:goodsImgV];
    [goodsImgV makeConstraints:^(MASConstraintMaker *make) {
        make.edges.insets(UIEdgeInsetsMake(3, 3, 3, 3));
    }];
    goodsImgV.image = [UIImage imageNamed:@"222"];
    
    self.closeBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [self.infoView addSubview:self.closeBtn];
    [self.closeBtn makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.infoView).offset(-10);
        make.top.equalTo(self.infoView).offset(10);
        make.size.equalTo(CGSizeMake(20, 20));
    }];
    [self.closeBtn setImage:[UIImage imageNamed:@"close_btn_bg"] forState:(UIControlStateNormal)];
    
    UILabel *goodsNameLab = [UILabel new];
    [self.infoView addSubview:goodsNameLab];
    [goodsNameLab makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imgBGView.right).offset(5);
        make.top.equalTo(self.infoView).offset(5);
        make.right.equalTo(self.closeBtn.left).offset(-5);
    }];
    goodsNameLab.preferredMaxLayoutWidth = KSCREENWIDTH;
    goodsNameLab.numberOfLines = 2;
    goodsNameLab.text = @"商品名 name商品名 name商品名 name商品名 name商品名 name商品名 name商品名 name商品名 name";
    goodsNameLab.textColor = K_COLOR_TEXT_DEEP;
    goodsNameLab.font = K_FONT_13;
    
    UILabel *priceLab = [UILabel new];
    [self.infoView addSubview:priceLab];
    [priceLab makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(goodsNameLab);
        make.top.equalTo(goodsNameLab.bottom).offset(3);
    }];
    priceLab.text = @"￥ 88888.88";
    priceLab.textColor = K_COLOR_TEXT_RED;
    priceLab.font = K_FONT_13;
    
    UILabel *goodsNumberLab = [UILabel new];
    [self.infoView addSubview:goodsNumberLab];
    [goodsNumberLab makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(goodsNameLab);
        make.bottom.equalTo(imgBGView);
    }];
    goodsNumberLab.text = @"商品编号：123456789";
    goodsNumberLab.textColor = K_COLOR_TEXT_MID;
    goodsNumberLab.font = K_FONT_10;
    
    UILabel *lineLab = [UILabel new];
    [self.infoView addSubview:lineLab];
    [lineLab makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.infoView);
        make.top.equalTo(imgBGView.bottom).offset(10);
        make.height.offset(0.5);
    }];
    lineLab.backgroundColor = K_COLOR_LINE;
    
    UILabel *colorTitleLab = [UILabel new];
    [self.infoView addSubview:colorTitleLab];
    [colorTitleLab makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imgBGView);
        make.top.equalTo(lineLab.bottom).offset(10);
    }];
    colorTitleLab.text = @"颜色";
    colorTitleLab.textColor = K_COLOR_TEXT_MID;
    colorTitleLab.font = K_FONT_12;
    
    NSArray *colorArr = @[
  @{@"color":K_COLOR_TEXT_RED,@"title":@"red"},
  @{@"color":K_COLOR_TEXT_RED,@"title":@"red"},
  @{@"color":K_COLOR_TEXT_RED,@"title":@"red"},
  @{@"color":K_COLOR_TEXT_RED,@"title":@"red"},
  @{@"color":K_COLOR_TEXT_RED,@"title":@"red"},
  @{@"color":K_COLOR_TEXT_RED,@"title":@"red"}];
    ///一行放几个按钮
    int count = 5;
    ///按钮间距
    CGFloat padding = 5;
    ///按钮宽
    CGFloat btnWidth  = (KSCREENWIDTH - 2*15 - (count -1)*padding)/(count);
    ///按钮高
    CGFloat btnHeight = btnWidth*0.5;
    for (int i = 0; i < colorArr.count; i++) {
        UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        [self.infoView addSubview:btn];
        [btn makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(colorTitleLab).offset(i%count*(btnWidth+padding));
            make.width.offset(btnWidth);
            make.height.offset(btnHeight);
            make.top.equalTo(colorTitleLab.bottom).offset(5+i/count*(btnHeight + padding));
        }];
        [btn setTitleColor:K_COLOR_TEXT_DEEP forState:(UIControlStateNormal)];
        btn.backgroundColor = colorArr[i][@"color"];
        [btn setTitle:colorArr[i][@"title"] forState:(UIControlStateNormal)];
        btn.titleLabel.font = K_FONT_12;
        btn.layer.cornerRadius = 3.0;
        btn.layer.masksToBounds = YES;
    }
    LB_PuleAndDownCustomView *puleAndDownView = [[LB_PuleAndDownCustomView alloc]init];
    [self.infoView addSubview:puleAndDownView];
    [puleAndDownView makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(colorTitleLab);
        make.top.equalTo(colorTitleLab.bottom).offset(5+5+(colorArr.count/count +1)*(btnHeight + padding));
        make.width.offset(70);
        make.height.offset(20);
    }];
    
    self.okBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [self.infoView addSubview:self.okBtn];
    [self.okBtn makeConstraints:^(MASConstraintMaker *make) {
        make.left.bottom.right.equalTo(self.infoView);
        make.height.offset(40);
    }];
    self.okBtn.backgroundColor = K_COLOR_TEXT_RED;
    [self.okBtn setTitle:@"确定" forState:(UIControlStateNormal)];
    self.okBtn.titleLabel.font = K_FONT_14;
    
}
-(void)bindingEvent{
    
    
}

@end
