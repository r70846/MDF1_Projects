//
//  BookReviewController.m
//  ViolinJazz
//
//  Created by Russell Gaspard on 3/13/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import "BookReviewController.h"

@interface BookReviewController ()

@end

@implementation BookReviewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    
    titleLabel.text = self.currentBook.title;
    subTitleLabel.text = self.currentBook.subTitle;
    authorLabel.text = self.currentBook.author;
    
    
    //IBOutlet UILabel *publicationLabel;
    //IBOutlet UILabel *reviewerLabel;
    //IBOutlet UILabel *urlLabel;

    
    [super viewWillAppear:(BOOL)animated];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
