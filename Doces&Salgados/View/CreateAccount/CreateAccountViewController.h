//
//  CreateAccountViewController.h
//  Doces&Salgados
//
//  Created by Moacir Lamego on 07/04/16.
//  Copyright © 2016 Moacir Lamego. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateAccountViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *mail;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumber;
@property (weak, nonatomic) IBOutlet UITextField *password;
- (IBAction)saveClient:(id)sender;
@end
