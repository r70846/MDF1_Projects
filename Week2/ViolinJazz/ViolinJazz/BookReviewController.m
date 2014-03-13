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
    

    //IBOutlet UILabel *publicationLabel;
    //IBOutlet UILabel *reviewerLabel;
    //IBOutlet UILabel *urlLabel;
    
    titleLabel.text = self.currentBook.title;
    subTitleLabel.text = self.currentBook.subTitle;
    authorLabel.text = self.currentBook.author;
    

    
    /*
    //Fill UI elements with data specific to the BandMateClass object that was chosen from he table view
    nameLabel.text = self.currentMusician.name;
    instLabel.text = self.currentMusician.instrument;
    phoneLabel.text = self.currentMusician.phone;
    emailLabel.text = self.currentMusician.email;
    notesLabel.text = self.currentMusician.notes;
    detailImage.image = self.currentMusician.instImage;
    */
    
    [super viewWillAppear:(BOOL)animated];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
