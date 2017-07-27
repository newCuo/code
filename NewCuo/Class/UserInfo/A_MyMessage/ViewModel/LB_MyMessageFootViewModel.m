//
//  LB_MyMessageFootViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_MyMessageFootViewModel.h"
#import "LB_MyMessageFootView.h"

@interface LB_MyMessageFootViewModel()

@property(strong,nonatomic)LB_MyMessageFootView *myMessageFootView;

@end

@implementation LB_MyMessageFootViewModel

-(void)initUI{
    
    self.myMessageFootView = [[LB_MyMessageFootView alloc]initWithFrame:CGRectMake(0, KSCREENHEIGHT, KSCREENWIDTH, 80)];
    [self.viewController.view addSubview:self.myMessageFootView];

    
}

-(void)setIsOpen:(BOOL)isOpen
{
    _isOpen = isOpen;
    
    [self.myMessageFootView remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.viewController.view.mas_bottom).offset(isOpen?-80:0);
        make.right.equalTo(self.viewController.view.mas_right).offset(0);
        make.left.equalTo(self.viewController.view.mas_left).offset(0);
        make.height.offset(80);
    }];
}




@end
