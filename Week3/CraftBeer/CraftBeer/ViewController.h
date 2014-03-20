//
//  ViewController.h
//  CraftBeer
//
//  Created by Russell Gaspard on 3/20/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    
    
    //Outlet for my table
    IBOutlet UITableView *mainTableView;
    
    
    NSMutableArray *barArray;
    
    
}




@end
