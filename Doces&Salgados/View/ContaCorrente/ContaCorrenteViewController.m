//
//  ContaCorrenteViewController.m
//  Doces&Salgados
//
//  Created by Moacir Lamego on 09/04/16.
//  Copyright © 2016 Moacir Lamego. All rights reserved.
//

#import "ContaCorrenteViewController.h"
#import "ContaCorrenteCelula.h"
#import "UIColor+Color.h"


@interface ContaCorrenteViewController ()
    @property (nonatomic) ContaCorrenteCelula* contaCorrenteCelula;
@end

@implementation ContaCorrenteViewController
@synthesize contaCorrenteCelula;

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
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    contaCorrenteCelula = [tableView dequeueReusableCellWithIdentifier:@"contaCorrenteCelula" forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            contaCorrenteCelula.date.text = @"01/10/2015";
            contaCorrenteCelula.historic.text = @"Compra Bisteca";
            contaCorrenteCelula.value.text = @"R$ -13,00";
            [contaCorrenteCelula setBackgroundColor:[UIColor celulaDebito]];
            break;
            
        case 1:
            contaCorrenteCelula.date.text = @"02/10/2015";
            contaCorrenteCelula.historic.text = @"Compra Quiabada";
            contaCorrenteCelula.value.text = @"R$ -13,00";
            [contaCorrenteCelula setBackgroundColor:[UIColor celulaDebito]];
            break;
            
        case 2:
            contaCorrenteCelula.date.text = @"03/10/2015";
            contaCorrenteCelula.historic.text = @"Compra Bisteca";
            contaCorrenteCelula.value.text = @"R$ -13,00";
            [contaCorrenteCelula setBackgroundColor:[UIColor celulaDebito]];
            break;
            
        case 3:
            contaCorrenteCelula.date.text = @"01/10/2015";
            contaCorrenteCelula.historic.text = @"Compra Bisteca";
            contaCorrenteCelula.value.text = @"R$ -13,00";
            [contaCorrenteCelula setBackgroundColor:[UIColor celulaDebito]];
            break;
            
        case 4:
            contaCorrenteCelula.date.text = @"01/10/2015";
            contaCorrenteCelula.historic.text = @"Pagamento Cartão de Crédito";
            contaCorrenteCelula.value.text = @"R$ 100,00";
            [contaCorrenteCelula setBackgroundColor:[UIColor celulaCredito]];
            break;
            
        default:
            break;
    }
    
    contaCorrenteCelula.indexPath = indexPath;
    
    return contaCorrenteCelula;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //    _detalhesDoPratoViewController = (DetalhesDoPratoViewController*)[[GlobalVariables shared].storyboard instantiateViewControllerWithIdentifier:@"detalhesDoPrato"];
    //
    //    [self presentViewController:_detalhesDoPratoViewController animated:YES completion:nil];
}


@end
