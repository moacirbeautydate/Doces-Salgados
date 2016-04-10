//
//  BeautyButton.h
//  BeaultyDate
//
//  Created by Moacir Lamego on 31/07/15.
//  Copyright (c) 2015 Moacir Lamego. All rights reserved.
//

#import "UIColor+Color.h"
#import "GlobalVariables.h"
#include <AvailabilityMacros.h>

@implementation UIColor (Color)

#pragma mark - base colors


+ (UIColor *) colorLabelDefault {
    return [[GlobalVariables shared] colorFromRGB:255.0f green:255.0f blue:255.0f alpha:1.0f];
}

+(UIColor *) celulaDebito {
    return [[GlobalVariables shared] colorFromRGB:246.0f green:183.0f blue:173.0f alpha:1.0f];
}
+(UIColor *) celulaCredito {
    return [[GlobalVariables shared] colorFromRGB:227.0f green:251.0f blue:227.0f alpha:1.0f];
}


@end
