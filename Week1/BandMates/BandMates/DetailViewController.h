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
}

@property (nonatomic, strong)BandMateClass *currentMusician;


@end
