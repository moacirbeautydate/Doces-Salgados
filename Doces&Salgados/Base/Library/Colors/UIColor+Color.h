//
//  BeautyButton.h
//  BeaultyDate
//
//  Created by Moacir Lamego on 31/07/15.
//  Copyright (c) 2015 Moacir Lamego. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum: unsigned char {
    typeColorClear = 0,
    typeColorMainColor,
    typeColorseparadorCelulaMenu,
    typeColorEnderecoMenuUsuario,
    typeColorbuttonBackgroundColorGreen
} typeColor;


@interface UIColor (Color)

+ (UIColor *) colorLabelDefault;

+ (UIColor *) celulaDebito;
+ (UIColor *) celulaCredito;

@end
