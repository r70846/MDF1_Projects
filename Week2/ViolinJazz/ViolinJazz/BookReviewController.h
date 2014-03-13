//
//  BookReviewController.h
//  ViolinJazz
//
//  Created by Russell Gaspard on 3/13/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BookReviewClass.h"

@interface BookReviewController : UIViewController
{
    

    
    //IBOutlet UILabel *publicationLabel;
    //IBOutlet UILabel *reviewerLabel;
    //IBOutlet UILabel *urlLabel;
    
    IBOutlet UILabel *titleLabel;
    IBOutlet UILabel *subTitleLabel;
    IBOutlet UILabel *authorLabel;
    
}

@property (nonatomic, strong)BookReviewClass *currentBook;


/*
@property (nonatomic, strong)NSString *publicationString;
@property (nonatomic, strong)NSString *reviewerString;
@property (nonatomic, strong)NSString *urlString;

@property (nonatomic, strong)NSString *titleString;
@property (nonatomic, strong)NSString *subTitleString;
@property (nonatomic, strong)NSString *authorString;
*/

@end
