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
@property (strong,nonatomic)UIScrollView *topScrollView;//
@property (strong,nonatomic)UIScrollView *bottomScrollView;//
@property (strong,nonatomic)UILabel *goodsNameLab;
@property (strong,nonatomic)UILabel *goodsPriceLab;
@end
@implementation GoodsDetailView



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
    self.topScrollView = [UIScrollView new];
    [self addSubview:self.topScrollView];
    [self.topScrollView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(UIEdgeInsetsMake(0, 0, 0, 0));
    }];
    self.topScrollView.backgroundColor = [UIColor yellowColor];
    self.topScrollView.contentSize = CGSizeMake(self.frame.size.width, self.frame.size.height);
    
    SDCycleScrollView *headerScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, self.frame.size.width, KSCREENWIDTH*0.4) imageNamesGroup:@[@"home",@"home"]];
    [self.topScrollView addSubview:headerScrollView];
    
    self.goodsNameLab = [[UILabel alloc]init];
    [self.topScrollView addSubview:self.goodsNameLab];
    [self.goodsNameLab makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.topScrollView.leading);
        make.trailing.equalTo(self.topScrollView.trailing);
        make.top.equalTo(self.topScrollView).offset(KSCREENWIDTH*0.4);
        make.height.equalTo(40);
    }];
    
    self.goodsNameLab.text = @"namenamenamenamenamename--namenamenamenamenamename--namenamename--namenamenamename";
    self.goodsNameLab.numberOfLines = 0;

    
}
-(void)bindingEvent{
    
}
@end
