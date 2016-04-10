//
//  AppDelegate.m
//  Doces&Salgados
//
//  Created by Moacir Lamego on 30/03/16.
//  Copyright © 2016 Moacir Lamego. All rights reserved.
//

#import "AppDelegate.h"
#import "GlobalVariables.h"


@interface AppDelegate ()

@end

static AppDelegate *_shared = nil;

@implementation AppDelegate

+(AppDelegate*) shared
{
    @synchronized([AppDelegate class])
    {
        if (_shared == nil)
        {
            _shared = [[self alloc] init];
        }
    }
    
    return _shared;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [GlobalVariables shared].storyboard = [UIStoryboard storyboardWithName:@"iPhone" bundle:nil];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

+ (UIViewController*) sharedAppDelegateRootViewController{
    return [[(AppDelegate*) [[UIApplication sharedApplication] delegate] window] rootViewController];
}

+ (UIWindow*) sharedAppDelegateWindow {
    return [(AppDelegate*) [[UIApplication sharedApplication] delegate] window];
}
@end

/*
https://brilliant-heat-8780.firebaseio.com/#-KElOeG_qYEmh7Hhlpqa|ea712665d0f4d0bfe2dd6a8902893762
*/