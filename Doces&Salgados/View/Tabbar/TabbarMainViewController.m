//
//  TabbarMainViewController.m
//  BeautyDate
//
//  Created by Moacir Lamego on 05/09/15.
//  Copyright (c) 2015 B2Beauty. All rights reserved.
//

#import "TabbarMainViewController.h"

@interface TabbarMainViewController ()

@end

@implementation TabbarMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
//    self.title = NSLocalizedString(@"title_MySchedules", nil);
//    self.title = NSLocalizedString(@"tituloTela_MainHighlights", nil);
//    self.title = NSLocalizedString(@"tituloTela_changeMyAccount", nil);
//
//    [[self.tabBar.items objectAtIndex:0] setTitle:NSLocalizedString(@"tituloTela_MainCategory", nil)];
//    [[self.tabBar.items objectAtIndex:1] setTitle:NSLocalizedString(@"tituloTela_MainHighlights", nil)];
//    [[self.tabBar.items objectAtIndex:2] setTitle:NSLocalizedString(@"tituloTela_MainNextToMe", nil)];
//    [[self.tabBar.items objectAtIndex:3] setTitle:NSLocalizedString(@"tituloTela_MainFavorites", nil)];
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (id)initWithRootViewController:(UIViewController *)viewController {
    if ((self = [self initWithNibName:nil bundle:nil])) {
        self.viewControllers = @[viewController];
    }
    return self;
}

@end
