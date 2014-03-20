//
//  DetailViewController.h
//  CraftBeer
//
//  Created by Russell Gaspard on 3/20/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    
    //Create outlets for user interface
    IBOutlet UILabel *nameLabel;
    
    
}

@property (nonatomic, strong)NSString *businessName;




@end
