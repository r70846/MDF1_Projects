//
//  SecondViewController.h
//  ViolinJazz
//
//  Created by Russell Gaspard on 3/13/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController  <UITableViewDataSource, UITableViewDelegate>
{
    
    NSMutableArray *bookReviewArray;
    
}

- (void)loadBookReviews;



@end
