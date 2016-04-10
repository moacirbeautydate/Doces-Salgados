//
//  detalhesDoPratoDoDiaViewController.m
//  Doces&Salgados
//
//  Created by Moacir Lamego on 09/04/16.
//  Copyright © 2016 Moacir Lamego. All rights reserved.
//

#import "DetalhesDoPratoDoDiaViewController.h"

@interface DetalhesDoPratoDoDiaViewController ()

@end

@implementation DetalhesDoPratoDoDiaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.btnVoltar setAction:@selector(voltar)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) voltar {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
