//
//  GlobalVariables.m
//  AZ Smart
//
//  Created on 07/02/16.
//

#import "GlobalVariables.h"

@implementation GlobalVariables
@synthesize userVO = _userVO;

static GlobalVariables *_shared = nil;

+(GlobalVariables*) shared
{
    @synchronized([GlobalVariables class])
    {
        if (_shared == nil)
        {
            _shared = [[self alloc] init];
        }
    }
    
    return _shared;
}

-(id)init {
    if (self = [super init]) {
    }
    
    return self;
}

-(void)setUserVO:(UserVO *)userVO {
    _userVO = userVO;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:_userVO.uID forKey:@"userVO_uID"];
    [defaults setObject:_userVO.name forKey:@"userVO_Name"];
    [defaults setObject:_userVO.phoneNumber forKey:@"userVO_PhoneNumber"];
    [defaults setObject:_userVO.mail forKey:@"userVO_Mail"];
    [defaults setObject:_userVO.token forKey:@"userVO_Token"];
    [defaults synchronize];
}

-(UserVO *)userVO {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    UserVO* userVO_;
    
    if ([defaults objectForKey:@"userVO_uID"]) {
        userVO_.uID = [defaults objectForKey:@"userVO_uID"];
        userVO_.name = [defaults objectForKey:@"userVO_Name"];
        userVO_.phoneNumber = [defaults objectForKey:@"userVO_PhoneNumber"];
        userVO_.mail = [defaults objectForKey:@"userVO_Mail"];
        userVO_.token = [defaults objectForKey:@"userVO_Token"];
    }
    
    return userVO_;
}

- (UIColor *)colorFromRGB:(float) red green:(float) green blue:(float) blue alpha:(float) alpha {
    return [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:alpha];
}


- (UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

@end
