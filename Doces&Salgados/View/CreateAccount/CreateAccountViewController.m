//
//  CreateAccountViewController.m
//  Doces&Salgados
//
//  Created by Moacir Lamego on 07/04/16.
//  Copyright © 2016 Moacir Lamego. All rights reserved.
//

#import "CreateAccountViewController.h"
#import <Firebase/Firebase.h>
#import "UserVO.h"
#import "GlobalVariables.h"

@interface CreateAccountViewController ()

@end

@implementation CreateAccountViewController


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveClient:(id)sender {
    Firebase *myRootRef = [[Firebase alloc] initWithUrl:@"https://brilliant-heat-8780.firebaseio.com/"];
    
    [myRootRef createUser:self.mail.text password:self.password.text withValueCompletionBlock:^(NSError *error, NSDictionary *result) {
     
     if (error) {
         NSLog(@"Erro %@", error.description);
     } else {
         NSDictionary *newUser = @{@"provider": @"iOS",
                                   @"displayName": self.name.text,
                                   @"phoneNumber": self.phoneNumber.text
                                   };
         
         UserVO* userVO = [UserVO new];
         userVO.name = self.name.text;
         userVO.phoneNumber = self.phoneNumber.text;
         userVO.mail = self.mail.text;
         userVO.uID = [result objectForKey:@"uid"];
         
         [[[myRootRef childByAppendingPath:@"users"] childByAppendingPath:userVO.uID] setValue:newUser];
         
         [myRootRef authUser:self.mail.text password:self.password.text withCompletionBlock:^(NSError *error, FAuthData *authData) {
             if (error) {
                 // Something went wrong. :(
             } else {
                 NSLog(@"%@", authData.uid);
                 NSLog(@"%@", authData.provider);
                 NSLog(@"%@", authData.providerData[@"email"]);
                 NSLog(@"%@", authData.providerData[@"profileImageURL"]);
                 NSLog(@"%@", authData.token);
                 
                 userVO.token = authData.token;
                 
                 [GlobalVariables shared].userVO = userVO;
             }
         }];
     }
 }];
}
@end
