//
//  BookReviewController.h
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
#import "BookReviewClass.h"

@interface BookReviewController : UIViewController
{
    
    //Create oulets for user interface
    IBOutlet UILabel *sourceLabel;
    IBOutlet UILabel *reviewerLabel;
    IBOutlet UILabel *urlLabel;
    IBOutlet UILabel *titleLabel;
    IBOutlet UILabel *subTitleLabel;
    IBOutlet UILabel *authorLabel;
    IBOutlet UILabel *exerptLabel;
}

//Create property to recieve users choice of custom book review object
@property (nonatomic, strong)BookReviewClass *currentBook;

@end
