//
//  ContaCorrenteCelula.h
//  Doces&Salgados
//
//  Created by Moacir Lamego on 09/04/16.
//  Copyright © 2016 Moacir Lamego. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContaCorrenteCelula : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UILabel *historic;
@property (weak, nonatomic) IBOutlet UILabel *value;

@property (nonatomic) NSIndexPath *indexPath;

@end
