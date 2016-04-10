//
//  CardapioViewController.m
//  Doces&Salgados
//
//  Created by Moacir Lamego on 09/04/16.
//  Copyright © 2016 Moacir Lamego. All rights reserved.
//

#import "CardapioViewController.h"
#import "CardapioCelula.h"
#import "DetalhesDoPratoViewController.h"
#import "GlobalVariables.h"


@interface CardapioViewController ()
    @property (nonatomic) CardapioCelula *cardapioCelula;
    @property (nonatomic) DetalhesDoPratoViewController *detalhesDoPratoViewController;

@end

@implementation CardapioViewController
@synthesize cardapioCelula;

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
    cardapioCelula = [tableView dequeueReusableCellWithIdentifier:@"cardapioCelula" forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            cardapioCelula.titleLaunch.text = @"Bisteca";
            cardapioCelula.priceLaunch.text = @"R$ 13,00";
            cardapioCelula.imageLaunch.image = [UIImage imageNamed:@"Bisteca"];
            break;
            
        case 1:
            cardapioCelula.titleLaunch.text = @"Peito de Frango";
            cardapioCelula.priceLaunch.text = @"R$ 13,00";
            cardapioCelula.imageLaunch.image = [UIImage imageNamed:@"PeitoFrango"];
            break;
            
        case 2:
            cardapioCelula.titleLaunch.text = @"Quiabada";
            cardapioCelula.priceLaunch.text = @"R$ 13,00";
            cardapioCelula.imageLaunch.image = [UIImage imageNamed:@"Quiabada"];
            break;
            
        case 3:
            cardapioCelula.titleLaunch.text = @"Quibe";
            cardapioCelula.priceLaunch.text = @"R$ 13,00";
            cardapioCelula.imageLaunch.image = [UIImage imageNamed:@"Quibe"];
            break;
            
        default:
            break;
    }
    
    cardapioCelula.indexPath = indexPath;
    
    return cardapioCelula;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    _detalhesDoPratoViewController = (DetalhesDoPratoViewController*)[[GlobalVariables shared].storyboard instantiateViewControllerWithIdentifier:@"detalhesDoPrato"];

    [self presentViewController:_detalhesDoPratoViewController animated:YES completion:nil];
}


@end
