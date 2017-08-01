//
//  GoodsDetailViewModel.m
//  NewCuo
//
//  Created by lirch on 2017/8/1.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "GoodsDetailViewModel.h"
#import "GoodsDetailView.h"

@interface GoodsDetailViewModel ()
@property(strong,nonatomic)BaseViewController *viewController;
@end
@implementation GoodsDetailViewModel
-(id)initWithViewController:(BaseViewController*)viewController{
    
    self = [super init];
    if (self) {
        self.viewController = viewController;
        [self initUI];
        [self bindingEvent];
    }
    return self;
}

-(void)initUI{
    GoodsDetailView *detailView = [[GoodsDetailView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, KSCREENHEIGHT-60*SCALE)];
    
    [self.viewController.view addSubview:detailView];
}
-(void)bindingEvent{
    
}
@end
