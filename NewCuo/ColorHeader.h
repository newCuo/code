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




#define K_COLOR_RGBA(R,G,B,A)    [UIColor colorWithRed:R/255.0F green:G/255.0F blue:B/255.0F alpha:A]
#define K_COLOR_RGB(R,G,B)       K_COLOR_RGBA(R,G,B,1)
#define K_MAIN_COLOR             K_COLOR_RGBA(153,203,52,1)    //#99cb34
#define K_LINE_COLOR             K_COLOR_RGBA(180,180,180,1)
#define K_BACKGROUND_COLOR       K_COLOR_RGBA(230,230,230,1)
#define K_DARKLINE_COLOR         K_COLOR_RGBA(200,200,200,1)
#define K_RED_COLOR              K_COLOR_RGBA(229,58,89,1)

#endif /* ColorHeader_h */
