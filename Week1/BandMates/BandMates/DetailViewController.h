//
//  DetailViewController.h
//  BandMates
//
//  Created by Russell Gaspard on 3/7/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BandMateClass.h"


@interface DetailViewController : UIViewController
{
    IBOutlet UILabel *nameLabel;
    IBOutlet UILabel *instLabel;
    IBOutlet UILabel *phoneLabel;
    IBOutlet UILabel *emailLabel;
    IBOutlet UILabel *notesLabel;
    IBOutlet UIImageView *detailImage;
}

@property (nonatomic, strong)BandMateClass *currentMusician;


@end
