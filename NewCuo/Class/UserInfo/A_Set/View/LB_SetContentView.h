//
//  LB_SetContentView.h
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    USERHEADIMAGE = 0,
    USERNICKNAME = 1,
    USERSEX = 2,
    USERBIRTH = 3,
    USERADDRESS = 4,
    USERSAFE = 5
} USERTYPE;

typedef void(^ClickItem)(USERTYPE type);

@interface LB_SetContentView : UIView

@property(strong,nonatomic) ClickItem clickItem;

-(UIImageView*)headImageView;

-(UILabel*)nickNameLab;

-(UILabel*)sexLab;

-(UILabel*)birthLab;

@end
