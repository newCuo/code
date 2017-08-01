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

@property (strong,nonatomic)UILabel *goodsNameLab;
@property (strong,nonatomic)UILabel *goodsPriceLab;
@property (strong,nonatomic)UIButton *couponRedemptionBtn;
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
        make.edges.insets(UIEdgeInsetsMake(0, 0, 0, 0));
        
    }];
    self.topScrollView.backgroundColor = [UIColor clearColor];
    self.topScrollView.contentSize = CGSizeMake(self.frame.size.width, self.frame.size.height);
    
    SDCycleScrollView *headerScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, self.frame.size.width, KSCREENWIDTH*0.4) imageNamesGroup:@[@"222",@"222"]];
    [self.topScrollView addSubview:headerScrollView];
    [headerScrollView makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.topScrollView.top);
        make.width.equalTo(self.frame.size.width);
        make.height.equalTo(KSCREENWIDTH*0.6);
    }];
    UIView *view1 = [UIView new];
    [self.topScrollView addSubview:view1];
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
    self.goodsNameLab.font = [UIFont systemFontOfSize:16];
    
    UILabel *RMBlab = [UILabel new];
    [view1 addSubview:RMBlab];
    [RMBlab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.goodsNameLab);
        make.top.equalTo(self.goodsNameLab.bottom).offset(10);
    }];
    RMBlab.text = @"¥";
    RMBlab.textColor = [UIColor colorWithHexString:@"e63a59"];
    RMBlab.font = [UIFont systemFontOfSize:14];
    
    self.goodsPriceLab = [UILabel new];
    [view1 addSubview:self.goodsPriceLab];
    [self.goodsPriceLab makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(RMBlab.bottom);
        make.leading.equalTo(RMBlab.trailing).offset(3);
    }];
    self.goodsPriceLab.text = @"888.88";
    self.goodsPriceLab.textColor = [UIColor colorWithHexString:@"e63a59"];
    self.goodsPriceLab.font = [UIFont systemFontOfSize:16];
    
    UILabel *lineLab = [UILabel new];
    [view1 addSubview:lineLab];
    lineLab.backgroundColor = [UIColor colorWithHexString:@"b7b7b7"];
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
    couponRedemptionLab.textColor = [UIColor colorWithHexString:@"666666"];
    couponRedemptionLab.font = [UIFont systemFontOfSize:14];
    
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
    discountLab.textColor = [UIColor colorWithHexString:@"e63a59"];
    discountLab.font = [UIFont systemFontOfSize:13];
    discountLab.text  = @"满555元减55元";
    discountLab.layer.cornerRadius = 5.0f;
    discountLab.layer.masksToBounds = YES;
    discountLab.layer.borderWidth = 1.0f;
    discountLab.layer.borderColor= [UIColor colorWithHexString:@"e63a59"].CGColor;
    
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
        make.bottom.equalTo(couponRedemptionLab.bottom).offset(15);
        make.width.equalTo(self.topScrollView.width);
//        make.height.equalTo(KSCREENWIDTH*0.6);
    }];
    //展示商品选择的view 规格 数量
    UIView *view2 = [UIView new];
    [self.topScrollView addSubview:view2];
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
    selectedTitlelab.font = [UIFont systemFontOfSize:14];
    
    UILabel *selectedlab = [UILabel new];
    [view2 addSubview:selectedlab];
    [selectedlab makeConstraints:^(MASConstraintMaker *make) {
        
        make.leading.equalTo(selectedTitlelab).offset(10);
        make.centerY.equalTo(view2.centerY);
    }];
    selectedlab.text = @"高配 1台";
    selectedlab.font = [UIFont systemFontOfSize:14];
    
    UIImageView *rightArrowImgV2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"right"]];
    [view2 addSubview:rightArrowImgV2];
    [rightArrowImgV2 makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(10);
        make.height.equalTo(18);
        make.centerY.equalTo(view2);
        make.trailing.equalTo(rightArrowImgV);
    }];
    
    
}
-(void)bindingEvent{
    @weakify(self);
    [[self.couponRedemptionBtn rac_signalForControlEvents:(UIControlEventTouchUpInside)] subscribeNext:^(id x) {
        @strongify(self);
        NSLog(@"点击了领券按钮");
    }];
}

- (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font
{
    CGSize maxSize = CGSizeMake(MAXFLOAT, MAXFLOAT);
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading  |NSStringDrawingUsesLineFragmentOrigin//采用换行
                           attributes:attrs //传入的字体字典
                              context:nil].size;
}

@end
