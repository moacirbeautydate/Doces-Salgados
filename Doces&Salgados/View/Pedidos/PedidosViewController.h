//
//  PedidosViewController.h
//  Doces&Salgados
//
//  Created by Moacir Lamego on 09/04/16.
//  Copyright © 2016 Moacir Lamego. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PedidosViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
