//
//  ViewController.h
//  BandMates
//
//  Created by Russell Gaspard on 3/7/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController  <UITableViewDataSource, UITableViewDelegate>
{
    
    IBOutlet UILabel *countLabel;
    IBOutlet UITableView *mainTableView;
    NSMutableArray *musicianArray;
    
}

- (void)loadData;
- (void)displayCount;
-(IBAction)onClick;

@end
