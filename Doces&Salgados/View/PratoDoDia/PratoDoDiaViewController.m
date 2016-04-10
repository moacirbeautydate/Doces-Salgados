//
//  PratoDoDiaViewController
//  Doces&Salgados
//
//  Created by Moacir Lamego on 09/04/16.
//  Copyright © 2016 Moacir Lamego. All rights reserved.
//

#import "PratoDoDiaViewController.h"
#import "PratoDoDiaCelula.h"
#import "DetalhesDoPratoDoDiaViewController.h"
#import "GlobalVariables.h"


@interface PratoDoDiaViewController ()
    @property (nonatomic) PratoDoDiaCelula* pratoDoDiaCelula;
    @property (nonatomic) DetalhesDoPratoDoDiaViewController* detalhesDoPratoDoDiaViewController;

@end

@implementation PratoDoDiaViewController
@synthesize pratoDoDiaCelula;

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
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    pratoDoDiaCelula = [tableView dequeueReusableCellWithIdentifier:@"pratoDoDiaCelula" forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            pratoDoDiaCelula.titleLaunch.text = @"Bisteca";
            pratoDoDiaCelula.priceLaunch.text = @"R$ 13,00";
            pratoDoDiaCelula.imageLaunch.image = [UIImage imageNamed:@"Bisteca"];
            break;
            
        case 1:
            pratoDoDiaCelula.titleLaunch.text = @"Peito de Frango";
            pratoDoDiaCelula.priceLaunch.text = @"R$ 13,00";
            pratoDoDiaCelula.imageLaunch.image = [UIImage imageNamed:@"PeitoFrango"];
            break;
            
        default:
            break;
    }
    
    pratoDoDiaCelula.indexPath = indexPath;
    
    return pratoDoDiaCelula;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    _detalhesDoPratoDoDiaViewController = (DetalhesDoPratoDoDiaViewController*)[[GlobalVariables shared].storyboard instantiateViewControllerWithIdentifier:@"detalhesDoPratoDoDia"];
    
    [self presentViewController:_detalhesDoPratoDoDiaViewController animated:YES completion:nil];
}


@end
