//
//  DetailViewController.h
//  BandMates
//
//  Created by Russell Gaspard on 3/7/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//
/*
 
 Russ Gaspard
 Project 1
 Mobile Development
 MDF1 1403
 
 */

#import <UIKit/UIKit.h>
#import "BandMateClass.h"


@interface DetailViewController : UIViewController
{
    
    //Set up data outlets in detail view
    IBOutlet UILabel *nameLabel;
    IBOutlet UILabel *instLabel;
    IBOutlet UILabel *phoneLabel;
    IBOutlet UILabel *emailLabel;
    IBOutlet UILabel *notesLabel;
    IBOutlet UIImageView *detailImage;
}

//Create a property to hold the single BandMateClass object as chosen from the table view
@property (nonatomic, strong)BandMateClass *currentMusician;


@end
