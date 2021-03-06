//
//  CustomCell.m
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

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//Refresh data in custom cell
-(void)refreshCellWithInfo:(NSString*)nameString instString:(NSString*)instString cellImage:(UIImage*)cellImage
{
    //Fill UI elements in custom cell
    nameLabel.text = nameString;
    instLabel.text = instString;
    myImageView.image = cellImage;
    
}


@end
