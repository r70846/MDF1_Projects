//
//  CustomCell.h
//  BandMates
//
//  Created by Russell Gaspard on 3/7/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
{
    IBOutlet UILabel *nameLabel;
    IBOutlet UILabel *instLabel;
    IBOutlet UIImageView *myImageView;
    
}

-(void)refreshCellWithInfo:(NSString*)nameString instString:(NSString*)instString cellImage:(UIImage*)cellImage;




@end
