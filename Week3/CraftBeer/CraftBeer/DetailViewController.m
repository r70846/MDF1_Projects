//
//  DetailViewController.m
//  CraftBeer
//
//  Created by Russell Gaspard on 3/20/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

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
    
    //Set Each Label text to appropriate propertiy of chosen book review object
    /*
    titleLabel.text = self.currentBook.title;
    subTitleLabel.text = self.currentBook.subTitle;
    authorLabel.text = self.currentBook.author;
    sourceLabel.text = self.currentBook.source;
    reviewerLabel.text = self.currentBook.reviewer;
    urlLabel.text = self.currentBook.url;
    exerptLabel.text = self.currentBook.exerpt;
     */
    
    nameLabel.text = self.currentPlace.businessName;
    
    [super viewWillAppear:(BOOL)animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
