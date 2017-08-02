//
//  ColorHeader.h
//  NewCuo
//
//  Created by lirch on 2017/8/2.
//  Copyright © 2017年 林波. All rights reserved.
//

#ifndef ColorHeader_h
#define ColorHeader_h

#define K_COLOR_HEX_STRING_ALPHA(hexString,float)         [UIColor colorWithHexString:hexString alpha:float]
#define K_COLOR_HEX_STRING(hexString) K_COLOR_HEX_STRING_ALPHA(hexString,1)

#define K_COLOR_TEXT_DEEP   K_COLOR_HEX_STRING(@"3a3a3a")
#define K_COLOR_TEXT_MID    K_COLOR_HEX_STRING(@"666666")
#define K_COLOR_TEXT_LIGHT  K_COLOR_HEX_STRING(@"a0a0a0")
#define K_COLOR_TEXT_RED    K_COLOR_HEX_STRING(@"e63a59")
#define K_COLOR_TEXT_BLACK  K_COLOR_HEX_STRING(@"000000")

#define K_COLOR_LINE        K_COLOR_HEX_STRING(@"b7b7b7")
#endif /* ColorHeader_h */
