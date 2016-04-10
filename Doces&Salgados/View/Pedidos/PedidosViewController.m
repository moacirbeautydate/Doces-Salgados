//
//  PedidosViewController.m
//  Doces&Salgados
//
//  Created by Moacir Lamego on 09/04/16.
//  Copyright © 2016 Moacir Lamego. All rights reserved.
//

#import "PedidosViewController.h"
#import "PedidosCelula.h"

@interface PedidosViewController ()
    @property (nonatomic) PedidosCelula* pedidosCelula;
@end

@implementation PedidosViewController
@synthesize pedidosCelula;
- (void)viewDidLoad {
    [super viewDidLoad];
    [[self tableView] reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    pedidosCelula = [tableView dequeueReusableCellWithIdentifier:@"pedidosCelula" forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            pedidosCelula.datePurchase.text = @"01/10/2015";
            pedidosCelula.purchasePrice.text = @"R$ 13,00";
            pedidosCelula.nameLaunch.text = @"Bisteca Francesa";
            pedidosCelula.status.text = @"Pago";
            pedidosCelula.coin.text = @"Dinheiro";
            pedidosCelula.payday.text = @"01/10/2015";
            break;
            
        case 1:
            pedidosCelula.datePurchase.text = @"01/02/2015";
            pedidosCelula.purchasePrice.text = @"R$ 13,00";
            pedidosCelula.nameLaunch.text = @"Quiabada";
            pedidosCelula.status.text = @"Devendo";
            pedidosCelula.coin.text = @"";
            pedidosCelula.payday.text = @"";
            break;
            
        case 2:
            pedidosCelula.datePurchase.text = @"01/10/2015";
            pedidosCelula.purchasePrice.text = @"R$ 13,00";
            pedidosCelula.nameLaunch.text = @"Quibe Cru";
            pedidosCelula.status.text = @"Pago";
            pedidosCelula.coin.text = @"Cartão de Crédito";
            pedidosCelula.payday.text = @"01/10/2015";
            break;
            
        case 3:
            pedidosCelula.datePurchase.text = @"01/10/2015";
            pedidosCelula.purchasePrice.text = @"R$ 13,00";
            pedidosCelula.nameLaunch.text = @"Feijoada";
            pedidosCelula.status.text = @"Pago";
            pedidosCelula.coin.text = @"Débito";
            pedidosCelula.payday.text = @"01/10/2015";
            break;
            
        default:
            break;
    }
    
    pedidosCelula.indexPath = indexPath;
    
    return pedidosCelula;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    _detalhesDoPratoViewController = (DetalhesDoPratoViewController*)[[GlobalVariables shared].storyboard instantiateViewControllerWithIdentifier:@"detalhesDoPrato"];
//    
//    [self presentViewController:_detalhesDoPratoViewController animated:YES completion:nil];
}


@end
