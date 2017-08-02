//
//  GoodsDetailView.m
//  NewCuo
//
//  Created by lirch on 2017/7/30.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "GoodsDetailView.h"
#import "SDCycleScrollView.h"

@interface GoodsDetailView ()

{
    
}
@end
@implementation GoodsDetailView



-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = K_BACKGROUND_COLOR;
        [self initUI];
        [self bindingEvent];
    }
    return self;
}
-(void)initUI{
    self.topScrollView = [UIScrollView new];
    [self addSubview:self.topScrollView];
    [self.topScrollView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
        
    }];
    self.topScrollView.backgroundColor = [UIColor clearColor];
    
    UIView *bgView = [UIView new];
    [self.topScrollView addSubview:bgView];
    [bgView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.topScrollView);
        make.width.equalTo(self.topScrollView);
        make.height.greaterThanOrEqualTo(@0.1f);//此处保证容器View高度的动态变化 大于等于0.f的高度
    }];
    bgView.backgroundColor = [UIColor clearColor];
    
    ///商品轮播图
    SDCycleScrollView *headerScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, self.frame.size.width, KSCREENWIDTH*0.4) imageNamesGroup:@[@"222",@"222"]];
    [bgView addSubview:headerScrollView];
    [headerScrollView makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.topScrollView.top);
        make.width.equalTo(self.frame.size.width);
        make.height.equalTo(KSCREENWIDTH*0.6);
    }];
    ///商品名，价格，优惠券等所在view
    UIView *view1 = [UIView new];
    [bgView addSubview:view1];
    view1.backgroundColor = [UIColor whiteColor];
    
    self.goodsNameLab = [[UILabel alloc]init];
    [view1 addSubview:self.goodsNameLab];
    [self.goodsNameLab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(view1.leading).offset(10);
        make.trailing.equalTo(view1.trailing).offset(-10);
        make.top.equalTo(view1.top).offset(10);
    }];
    self.goodsNameLab.backgroundColor = [UIColor clearColor];
    self.goodsNameLab.preferredMaxLayoutWidth = KSCREENWIDTH - 2*10;
    //    [self.goodsNameLab setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    self.goodsNameLab.text = @"商品名name商品名name商品名name商品名name商品名name";
    self.goodsNameLab.numberOfLines = 0;
    self.goodsNameLab.font = K_FONT_16;
    
    UILabel *RMBlab = [UILabel new];
    [view1 addSubview:RMBlab];
    [RMBlab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.goodsNameLab);
        make.top.equalTo(self.goodsNameLab.bottom).offset(10);
    }];
    RMBlab.text = @"¥";
    RMBlab.textColor = K_COLOR_TEXT_RED;
    RMBlab.font = K_FONT_14;
    
    self.goodsPriceLab = [UILabel new];
    [view1 addSubview:self.goodsPriceLab];
    [self.goodsPriceLab makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(RMBlab.bottom);
        make.leading.equalTo(RMBlab.trailing).offset(3);
    }];
    self.goodsPriceLab.text = @"888.88";
    self.goodsPriceLab.textColor = K_COLOR_TEXT_RED;
    self.goodsPriceLab.font = K_FONT_16;
    
    UILabel *lineLab = [UILabel new];
    [view1 addSubview:lineLab];
    lineLab.backgroundColor = K_COLOR_LINE;
    [lineLab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.equalTo(view1);
        make.top.equalTo(self.goodsPriceLab.bottom).offset(20);
        make.height.equalTo(1);
    }];
    
    UILabel *couponRedemptionLab = [UILabel new];
    [view1 addSubview:couponRedemptionLab];
    [couponRedemptionLab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.goodsNameLab.leading);
        make.top.equalTo(lineLab.bottom).offset(15);
    }];
    couponRedemptionLab.text = @"领券";
    couponRedemptionLab.textColor = K_COLOR_TEXT_MID;
    couponRedemptionLab.font = K_FONT_14;
    
    CGSize maxSize = [self sizeWithText:@"满555元减55元" font:[UIFont systemFontOfSize:13]];
    UILabel *discountLab = [UILabel new];
    [view1 addSubview:discountLab];
    [discountLab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(couponRedemptionLab.trailing).offset(10);
        make.centerY.equalTo(couponRedemptionLab);
        make.width.equalTo(maxSize.width+20);
        make.height.equalTo(maxSize.height+10);
    }];
    discountLab.textAlignment = NSTextAlignmentCenter;
    discountLab.textColor = K_COLOR_TEXT_RED;
    discountLab.font = [UIFont systemFontOfSize:13];
    discountLab.text  = @"满555元减55元";
    discountLab.layer.cornerRadius = 5.0f;
    discountLab.layer.masksToBounds = YES;
    discountLab.layer.borderWidth = 1.0f;
    discountLab.layer.borderColor= K_COLOR_TEXT_RED.CGColor;
    
    UIImageView *rightArrowImgV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"right"]];
    [view1 addSubview:rightArrowImgV];
    [rightArrowImgV makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(10);
        make.height.equalTo(18);
        make.centerY.equalTo(couponRedemptionLab);
        make.trailing.equalTo(view1.trailing).offset(-10);
    }];
    
    self.couponRedemptionBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [view1 addSubview:self.couponRedemptionBtn];
    [self.couponRedemptionBtn makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.bottom.equalTo(view1);
        make.top.equalTo(lineLab.bottom);
    }];
    self.couponRedemptionBtn.backgroundColor = [UIColor clearColor];
    
    [view1 makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(headerScrollView.bottom);
        make.leading.equalTo(self.topScrollView.leading);
        make.bottom.equalTo(couponRedemptionLab.bottom).offset(15);
        make.width.equalTo(self.topScrollView.width);
//        make.height.equalTo(KSCREENWIDTH*0.6);
    }];
    ///展示商品规格 数量选择的view
    UIView *view2 = [UIView new];
    [bgView addSubview:view2];
    [view2 makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view1.bottom).offset(10);
//        make.leading.trailing.equalTo(self.topScrollView);
        make.width.equalTo(view1);
        make.height.equalTo(40);
    }];
    view2.backgroundColor = [UIColor whiteColor];
    
    UILabel *selectedTitlelab = [UILabel new];
    [view2 addSubview:selectedTitlelab];
    [selectedTitlelab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.goodsNameLab);
        make.centerY.equalTo(view2.centerY);
    }];
    selectedTitlelab.textColor = [UIColor colorWithHexString:@"666666"];
    selectedTitlelab.text = @"已选";
    selectedTitlelab.font = K_FONT_14;
    
    UILabel *selectedlab = [UILabel new];
    [view2 addSubview:selectedlab];
    [selectedlab makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.equalTo(selectedTitlelab.trailing).offset(10);
        make.centerY.equalTo(view2.centerY);
    }];
    selectedlab.text = @"高配 1台";
    selectedlab.font = K_FONT_14;
    
    UIImageView *rightArrowImgV2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"right"]];
    [view2 addSubview:rightArrowImgV2];
    [rightArrowImgV2 makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(rightArrowImgV);
        make.centerY.equalTo(view2);
        make.trailing.equalTo(rightArrowImgV);
    }];
    
    ///地址，运费，服务，提示等所在的view
    UIView *view3 = [UIView new];
    view3.backgroundColor = [UIColor whiteColor];
    [bgView addSubview:view3];
    
    UILabel *sendToLab = [UILabel new];
    [view3 addSubview:sendToLab];
    [sendToLab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.goodsNameLab);
        make.top.equalTo(view3).offset(10);
    }];
    sendToLab.font = K_FONT_14;
    sendToLab.text = @"送至";
    sendToLab.textColor = K_COLOR_TEXT_MID;
    
    UILabel *addressLab = [UILabel new];
    [view3 addSubview:addressLab];
    [addressLab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(sendToLab.trailing).offset(10);
        make.centerY.equalTo(sendToLab);
    }];
    addressLab.text = @"北京 朝阳区 xx路";
    addressLab.font = K_FONT_14;
    
    UIImageView *addressImgV = [UIImageView new];
    [view3 addSubview:addressImgV];
    [addressImgV makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(14);
        make.height.equalTo(16);
        make.trailing.equalTo(rightArrowImgV);
        make.centerY.equalTo(sendToLab);
    }];
    addressImgV.image = [UIImage imageNamed:@"address_img"];
    
    self.addressBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [view3 addSubview:self.addressBtn];
    [self.addressBtn makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.top.equalTo(view3);
        make.bottom.equalTo(sendToLab).offset(5);
    }];
    self.addressBtn.backgroundColor = [UIColor clearColor];
    
    UILabel *isHaveGoodsLab = [UILabel new];
    [view3 addSubview:isHaveGoodsLab];
    [isHaveGoodsLab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(addressLab);
        make.top.equalTo(addressLab.bottom).offset(10);
    }];
    isHaveGoodsLab.text = @"现货";
    isHaveGoodsLab.textColor = K_COLOR_TEXT_RED;
    isHaveGoodsLab.font = K_FONT_14;
    
    UILabel *freightTitleLab = [UILabel new];
    [view3 addSubview:freightTitleLab];
    [freightTitleLab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.goodsNameLab);
        make.top.equalTo(isHaveGoodsLab.bottom).offset(10);
    }];
    freightTitleLab.textColor = K_COLOR_TEXT_MID;
    freightTitleLab.text = @"运费";
    freightTitleLab.font = K_FONT_14;
    
    UILabel *freightLab = [UILabel new];
    [view3 addSubview:freightLab];
    [freightLab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(addressLab);
        make.top.equalTo(freightTitleLab);
    }];
    freightLab.text = @"包邮";
    freightLab.font = K_FONT_14;
    
    UILabel *serviceTitleLab = [UILabel new];
    [view3 addSubview:serviceTitleLab];
    [serviceTitleLab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.goodsNameLab);
        make.top.equalTo(freightTitleLab.bottom).offset(10);
    }];
    serviceTitleLab.textColor = K_COLOR_TEXT_MID;
    serviceTitleLab.text = @"服务";
    serviceTitleLab.font = K_FONT_14;
    
    UILabel *serviceLab = [UILabel new];
    [view3 addSubview:serviceLab];
    [serviceLab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(addressLab);
        make.top.equalTo(serviceTitleLab);
        make.trailing.equalTo(view3.trailing).offset(-10);
    }];
    serviceLab.preferredMaxLayoutWidth = KSCREENWIDTH - 20 - 40;
    serviceLab.numberOfLines = 0;
    serviceLab.text = @"直接发货直接发货直接发货直接发货直接发货直接发货直接发货直接发货";
    serviceLab.font = K_FONT_14;
    
    UILabel *promptTitleLab = [UILabel new];
    [view3 addSubview:promptTitleLab];
    [promptTitleLab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.goodsNameLab);
        make.top.equalTo(serviceLab.bottom).offset(10);
    }];
    promptTitleLab.textColor = K_COLOR_TEXT_MID;
    promptTitleLab.text = @"服务";
    promptTitleLab.font = K_FONT_14;
    
    NSArray *arr = @[@"正品保障",@"七天无理由退货",@"测试"];
    for (int i = 0; i < 3; i++) {
        UIImageView *imgV = [UIImageView new];
        [view3 addSubview:imgV];
        [imgV makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(addressLab);
            make.width.height.equalTo(15);
            make.top.equalTo(promptTitleLab).offset(i*25);
        }];
        imgV.image = [UIImage imageNamed:@"sele_yes_img"];
        
        UILabel *lab = [UILabel new];
        [view3 addSubview:lab];
        [lab makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(imgV.trailing).offset(5);
            make.centerY.equalTo(imgV);
        }];
        lab.font = K_FONT_14;
        lab.text = arr[i];
    }
    
    UILabel *lineLab2 = [UILabel new];
    [view3 addSubview:lineLab2];
    [lineLab2 makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.equalTo(view3);
        make.top.equalTo(promptTitleLab.bottom).offset((arr.count-1)*25+30);
        make.height.equalTo(1);
    }];
    lineLab2.backgroundColor = K_COLOR_LINE;
    
    UILabel *commentLab = [UILabel new];
    [view3 addSubview:commentLab];
    [commentLab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.goodsNameLab);
        make.top.equalTo(lineLab2.bottom).offset(10);
    }];
    commentLab.text = @"评论(暂无商品评价)";
    commentLab.textColor = K_COLOR_TEXT_MID;
    commentLab.font = K_FONT_14;
    
    UIImageView *rightArrowImgV3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"right"]];
    [view3 addSubview:rightArrowImgV3];
    [rightArrowImgV3 makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(rightArrowImgV);
        make.centerY.equalTo(commentLab);
        make.trailing.equalTo(rightArrowImgV);
    }];
    
    UILabel *commentNumberLab = [UILabel new];
    [view3 addSubview:commentNumberLab];
    [commentNumberLab makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(rightArrowImgV3.leading).offset(5);
        make.centerY.equalTo(commentLab);
        make.width.equalTo(45);
    }];
    commentNumberLab.textColor = K_COLOR_TEXT_RED;
    commentNumberLab.font = K_FONT_14;
    commentNumberLab.text = @"100%";
    
    UILabel *goodCommentLab = [UILabel new];
    [view3 addSubview:goodCommentLab];
    [goodCommentLab makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(commentNumberLab.leading);
        make.centerY.equalTo(commentLab);
    }];
    goodCommentLab.text = @"好评";
    goodCommentLab.font = K_FONT_14;
    
    [view3 makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view2.bottom).offset(10);
        make.leading.equalTo(self.topScrollView.leading);
        make.bottom.equalTo(commentLab.bottom).offset(10);
        make.width.equalTo(self.topScrollView.width);
    }];
    
    UILabel *pullUpLab = [UILabel new];
    [bgView addSubview:pullUpLab];
    [pullUpLab makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view3.bottom).offset(5);
        make.centerX.equalTo(self.topScrollView);
        make.bottom.equalTo(bgView).offset(-10);
    }];
    pullUpLab.textColor = K_COLOR_TEXT_MID;
    pullUpLab.text = @"上拉查看图文详情";
    pullUpLab.font = K_FONT_12;
    
    UILabel *lineLab3 = [UILabel new];
    [bgView addSubview:lineLab3];
    [lineLab3 makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.topScrollView);
        make.trailing.equalTo(pullUpLab.leading).offset(5);
        make.centerY.equalTo(pullUpLab);
        make.height.equalTo(1);
    }];
    lineLab3.backgroundColor = K_COLOR_LINE;
    
    UILabel *lineLab4 = [UILabel new];
    [bgView addSubview:lineLab4];
    [lineLab4 makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(pullUpLab.trailing).offset(5);
        make.trailing.equalTo(self.topScrollView);
        make.centerY.equalTo(pullUpLab);
        make.height.equalTo(1);
    }];
    lineLab4.backgroundColor = K_COLOR_LINE;
//    [view3 makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(view2.bottom).offset(10);
//        make.leading.equalTo(self.topScrollView.leading);
//        make.bottom.equalTo(promptTitleLab.bottom).offset(15);
//        make.width.equalTo(self.topScrollView.width);
//    }];
//    self.topScrollView.contentSize = CGSizeMake(self.frame.size.width, self.frame.size.height);

}
-(void)bindingEvent{
    @weakify(self);
    [[self.couponRedemptionBtn rac_signalForControlEvents:(UIControlEventTouchUpInside)] subscribeNext:^(id x) {
        @strongify(self);
        NSLog(@"点击了领券按钮");
        [self.topScrollView remakeConstraints:^(MASConstraintMaker *make) {
            make.top.leading.trailing.equalTo(self);
            make.height.equalTo(100);
        }];
    }];
}
//-(void)layoutSubviews {
//    [super layoutSubviews];
//    
//    [self setNeedsLayout];
//    [self layoutIfNeeded];
//    
//}
- (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font
{
    CGSize maxSize = CGSizeMake(MAXFLOAT, MAXFLOAT);
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading  |NSStringDrawingUsesLineFragmentOrigin//采用换行
                           attributes:attrs //传入的字体字典
                              context:nil].size;
}

@end
