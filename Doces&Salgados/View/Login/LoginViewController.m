//
//  LoginViewController.m
//  Doces&Salgados
//
//  Created by Moacir Lamego on 07/04/16.
//  Copyright © 2016 Moacir Lamego. All rights reserved.
//

#import "LoginViewController.h"
#import <Firebase/Firebase.h>
#import "GlobalVariables.h"
#import "TabbarMainViewController.h"
#import "AppDelegate.h"

@interface LoginViewController ()
    @property(nonatomic) TabbarMainViewController* tabbarMainViewController;
@end

@implementation LoginViewController
@synthesize tabbarMainViewController;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Firebase *ref = [[Firebase alloc] initWithUrl:@"https://brilliant-heat-8780.firebaseio.com/"];
    if (ref.authData) {
        NSLog(@"authData: %@", ref.authData);
        [self entrar];
    } else {
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)login:(id)sender {
    Firebase *myRootRef = [[Firebase alloc] initWithUrl:@"https://brilliant-heat-8780.firebaseio.com/"];

    [myRootRef authUser:self.mail.text password:self.password.text withCompletionBlock:^(NSError *error, FAuthData *authData) {
        if (error) {
            // Something went wrong. :(
        } else {
            NSLog(@"%@", authData.uid);
            NSLog(@"%@", authData.provider);
            NSLog(@"%@", authData.providerData[@"email"]);
            NSLog(@"%@", authData.providerData[@"profileImageURL"]);
            NSLog(@"%@", authData.token);
            
            UserVO* userVO = [UserVO new];
            userVO.name = authData.providerData[@"displayName"];
            userVO.phoneNumber = authData.providerData[@"phoneNumber"];
            userVO.mail = self.mail.text;
            userVO.uID = authData.uid;
            userVO.token = authData.token;
            
            [GlobalVariables shared].userVO = userVO;
            
            [self entrar];
        }
    }];
}

- (void) entrar {
    tabbarMainViewController = (TabbarMainViewController*)[[GlobalVariables shared].storyboard instantiateViewControllerWithIdentifier:@"tabbar"];
    TabbarMainViewController *tabBar = (TabbarMainViewController *)tabbarMainViewController;
    tabBar.selectedIndex = 0;
    [AppDelegate sharedAppDelegateWindow].rootViewController = tabBar;
}

@end
