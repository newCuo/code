//
//  Enumeration.h
//  NewCuo
//
//  Created by 林波 on 2017/8/3.
//  Copyright © 2017年 林波. All rights reserved.
//
//   枚举定义

#ifndef Enumeration_h
#define Enumeration_h


/******************************  订单   *******************************/
typedef enum : NSUInteger {
    ORDERTYPE_WAITE_PAY = 1,         //待付款
    ORDERTYPE_WAITE_TAKE = 2,        //待收货
    ORDERTYPE_WAITE_APPRAISE = 3,    //待评价
    ORDERTYPE_RETURN = 4,            //退货
    ORDERTYPE_ALL = 999,             //全部
} ORDERTYPE;


/******************************  订单内容   *******************************/
typedef enum : NSUInteger {
    ORDERCONENTTYPE_LIST = 0,
    ORDERCONENTTYPE_MORE = 1,
    ORDERCONENTTYPE_LIST_NOBTN = 2,
    ORDERCONENTTYPE_MORE_NOBTN = 3,
}ORDERCONENTTYPE;



#endif /* Enumeration_h */
