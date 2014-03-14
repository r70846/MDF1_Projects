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
    

    
    IBOutlet UILabel *sourceLabel;
    IBOutlet UILabel *reviewerLabel;
    IBOutlet UILabel *urlLabel;
    
    IBOutlet UILabel *titleLabel;
    IBOutlet UILabel *subTitleLabel;
    IBOutlet UILabel *authorLabel;
    IBOutlet UILabel *exerptLabel;
}

@property (nonatomic, strong)BookReviewClass *currentBook;

@end
