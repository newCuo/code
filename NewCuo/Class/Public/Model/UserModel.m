//
//  UserModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/22.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "UserModel.h"

static UserModel *_instance = nil;

@interface UserModel();

@end

@implementation UserModel


+(instancetype)allocWithZone:(struct _NSZone *)zone
{
    // 也可以使用一次性代码
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (_instance == nil) {
            _instance = [super allocWithZone:zone];
        }
    });
    return _instance;
}

// 类方法命名规范 share类名|default类名|类名
+(instancetype)shareUserModel
{
    //return _instance;
    // 最好用self 用Tools他的子类调用时会出现错误
    return [[self alloc]init];
}
// 为了严谨，也要重写copyWithZone 和 mutableCopyWithZone
-(id)copyWithZone:(NSZone *)zone
{
    return _instance;
}
-(id)mutableCopyWithZone:(NSZone *)zone
{
    return _instance;
}



@end
