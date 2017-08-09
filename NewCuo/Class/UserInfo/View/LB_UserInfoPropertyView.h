//
//  LB_UserInfoPropertyView.h
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ClickProperty)(int type);

@interface LB_UserInfoPropertyView : UIView

@property(assign,nonatomic)BOOL isLogin;

@property(strong,nonatomic)ClickProperty clickProperty;


@end
