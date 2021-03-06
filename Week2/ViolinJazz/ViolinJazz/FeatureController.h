//
//  FeatureController.h
//  ViolinJazz
//
//  Created by Russell Gaspard on 3/13/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//
/*
 
 Russ Gaspard
 Project 2
 Mobile Development
 MDF1 1403
 
 */

#import <UIKit/UIKit.h>
#import "fiddlerClass.h"


@interface FeatureController : UIViewController
{
    
    IBOutlet UILabel *nameLabel;
    IBOutlet UILabel *datesLabel;
    IBOutlet UILabel *notesLabel;
    
    NSMutableArray *fiddlerArray;
}

@property (nonatomic, strong)fiddlerClass *featuredFiddler;

- (void)loadFiddlers;

@end
