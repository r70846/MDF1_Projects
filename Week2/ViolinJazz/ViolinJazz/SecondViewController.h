//
//  SecondViewController.h
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

@interface SecondViewController : UIViewController  <UITableViewDataSource, UITableViewDelegate>
{
    
    //Outlet for my table
    IBOutlet UITableView *mainTableView;
    
    //Array to hold Book Review objects
    NSMutableArray *bookReviewArray;
    
}

//Function to hard code book review objects into array
- (void)loadBookReviews;



@end
