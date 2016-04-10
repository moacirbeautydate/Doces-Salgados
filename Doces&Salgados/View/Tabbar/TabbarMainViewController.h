//
//  TabbarMainViewController.h
//  BeautyDate
//
//  Created by Moacir Lamego on 05/09/15.
//  Copyright (c) 2015 B2Beauty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabbarMainViewController : UITabBarController 

@property (nonatomic) BOOL aberto;
- (id)initWithRootViewController:(UIViewController *)viewController;
@property (nonatomic, assign) BOOL navigationBarHidden;

@end
