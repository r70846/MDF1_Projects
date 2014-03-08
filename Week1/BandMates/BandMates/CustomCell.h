//
//  CustomCell.h
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

@interface CustomCell : UITableViewCell
{
    
    //Set up data outlets in custom cell
    IBOutlet UILabel *nameLabel;
    IBOutlet UILabel *instLabel;
    IBOutlet UIImageView *myImageView;
    
}

//Refresh data in custom cell
-(void)refreshCellWithInfo:(NSString*)nameString instString:(NSString*)instString cellImage:(UIImage*)cellImage;




@end
