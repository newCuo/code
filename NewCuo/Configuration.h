//
//  Configuration.h
//  NewCuo
//
//  Created by 林波 on 2017/7/19.
//  Copyright © 2017年 林波. All rights reserved.
//

#ifndef Configuration_h
#define Configuration_h


#define KSCREENWIDTH    [UIScreen mainScreen].bounds.size.width
#define KSCREENHEIGHT   [UIScreen mainScreen].bounds.size.height
#define SCALE ([UIScreen mainScreen].bounds.size.width/375) //比例



#define K_COLOR_RGBA(R,G,B,A)    [UIColor colorWithRed:R/255.0F green:G/255.0F blue:B/255.0F alpha:A]
#define K_COLOR_RGB(R,G,B)       K_COLOR_RGBA(R,G,B,1)
#define K_MAIN_COLOR             K_COLOR_RGBA(153,203,52,1)    //#99cb34
#define K_LINE_COLOR             K_COLOR_RGBA(180,180,180,1)
#define K_BACKGROUND_COLOR       K_COLOR_RGBA(230,230,230,1)
#define K_DARKLINE_COLOR         K_COLOR_RGBA(200,200,200,1)
#define K_RED_COLOR              K_COLOR_RGBA(229,58,89,1)


#define KAPPDELEGATE             (AppDelegate*)[UIApplication sharedApplication].delegate


#define KNTCHANGEGOODSCLASS    @"KNTCHANGEGOODSCLASS" //切换种类
#define KNTLOINGSUCCESS        @"KNTLOINGSUCCESS"     //登录成功
#define KNTLOINGOUTSUCCESS     @"KNTLOINGOUTSUCCESS"  //退出登录成功



#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;



//自定义输出
//常用DEBUG  Debug
#ifdef Debug
#define CLog(format, ...) NSLog(format, ## __VA_ARGS__)
#else
#define CLog(format, ...)
#endif

//详细的日志信息
#ifdef Debug
# define DLog(fmt, ...) NSLog((@"[文件名:%s]\n" "[函数名:%s]\n" "[行号:%d] \n" fmt), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
# define DLog(...);
#endif


#endif /* Configuration_h */
