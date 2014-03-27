//
//  ViewController.h
//  CraftBeer
//
//  Created by Russell Gaspard on 3/20/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//
/*
 
 Russ Gaspard
 Project 3
 Mobile Development
 MDF1 1403
 
 */


#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "AllViewController.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    
    
    //Outlet for my table
    IBOutlet UITableView *mainTableView;
    
    
    IBOutlet UIButton *allViewButton;
    
    NSMutableArray *barArray;
    
    
}

-(IBAction)done:(UIStoryboardSegue*)segue;

-(void)loadBeerPlaces;

@end
