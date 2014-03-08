//
//  ViewController.h
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

@interface ViewController : UIViewController  <UITableViewDataSource, UITableViewDelegate>
{
    
    IBOutlet UILabel *countLabel;           //Dynamic label to display the current count of BandMateClass objects
    IBOutlet UITableView *mainTableView;    //Table view reference
    NSMutableArray *musicianArray;          //Reference to main array that will hold my BandMateClass objects
    
}

- (void)loadData;
- (void)displayCount;
-(IBAction)onClick;

@end
