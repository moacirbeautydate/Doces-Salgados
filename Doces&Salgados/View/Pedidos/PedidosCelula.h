//
//  PedidosCelula.h
//  Doces&Salgados
//
//  Created by Moacir Lamego on 09/04/16.
//  Copyright © 2016 Moacir Lamego. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PedidosCelula : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel *datePurchase;
@property (weak, nonatomic) IBOutlet UILabel *purchasePrice;
@property (weak, nonatomic) IBOutlet UILabel *nameLaunch;
@property (weak, nonatomic) IBOutlet UILabel *status;
@property (weak, nonatomic) IBOutlet UILabel *coin;
@property (weak, nonatomic) IBOutlet UILabel *payday;

@property (nonatomic) NSIndexPath *indexPath;

@end
