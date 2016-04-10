//
//  GlobalVariables.h
//  AZ Smart
//
//  Created in 07/02/16.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "UserVO.h"

@interface GlobalVariables : NSObject

+ (GlobalVariables *)shared;

@property (nonatomic) NSNumberFormatter* numberFormatter;
@property (nonatomic) UserVO* userVO;
@property (nonatomic) UIStoryboard *storyboard;

- (UIColor *)colorFromRGB:(float) red green:(float) green blue:(float) blue alpha:(float) alpha;
- (UIColor *)colorFromHexString:(NSString *)hexString;

@end
