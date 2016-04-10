//
//  CardapioCelula.h
//  Doces&Salgados
//
//  Created by Moacir Lamego on 09/04/16.
//  Copyright © 2016 Moacir Lamego. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardapioCelula : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLaunch;
@property (weak, nonatomic) IBOutlet UILabel *priceLaunch;
@property (weak, nonatomic) IBOutlet UIButton *btnIWantLaunch;
@property (weak, nonatomic) IBOutlet UIImageView *imageLaunch;
@property (nonatomic) NSIndexPath *indexPath;

@end
