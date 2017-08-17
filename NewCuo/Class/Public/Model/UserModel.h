//
//  UserModel.h
//  NewCuo
//
//  Created by 林波 on 2017/7/22.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject

@property(strong,nonatomic)NSString *userID;

@property(strong,nonatomic)NSString *token;

@property(strong,nonatomic)NSString *userName;

@property(assign,nonatomic)BOOL isLogin;



+(instancetype)shareDefaultUserModel;

@end
