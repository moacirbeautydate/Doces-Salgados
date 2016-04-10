//
//  AppDelegate.h
//  Doces&Salgados
//
//  Created by Moacir Lamego on 30/03/16.
//  Copyright © 2016 Moacir Lamego. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

+ (AppDelegate *)shared;
+ (UIViewController*) sharedAppDelegateRootViewController;
+ (UIWindow*) sharedAppDelegateWindow;

@end

