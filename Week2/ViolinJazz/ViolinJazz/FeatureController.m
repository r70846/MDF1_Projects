//
//  FeatureController.m
//  ViolinJazz
//
//  Created by Russell Gaspard on 3/13/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import "FeatureController.h"

@interface FeatureController ()

@end

@implementation FeatureController

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
    
    //Fill Array with Candidates for feature fiddler
    [self loadFiddlers];
    
    self.featuredFiddler = fiddlerArray[0];

    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    
    nameLabel.text = self.featuredFiddler.name;
    datesLabel.text = self.featuredFiddler.dates;
    notesLabel.text = self.featuredFiddler.notes;
    
    
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


- (void)loadFiddlers
{
    
    fiddlerArray = [[NSMutableArray alloc] init];
    
    fiddlerClass *fiddler1 = [[fiddlerClass alloc] init];
    fiddler1.name = @"Stephane Grapelli";
    fiddler1.dates = @"(1908–1997)";
    fiddler1.notes = @"Perhaps the best of the swing violinists, Stephane became know for playing Gypsy style jazz with Django Rienhardt in Paris in the 1930s.";
    [fiddlerArray addObject:fiddler1];

    fiddlerClass *fiddler2 = [[fiddlerClass alloc] init];
    fiddler2.name = @"Vassar Clements";
    fiddler2.dates = @"(1928–2005)";
    fiddler2.notes = @"While making his start as a fiddler with Bill Monroe and the Bluegrass Boys, Vasser's virtuostic playing grew to incorperate many styles including hot jazz and swing.";
    [fiddlerArray addObject:fiddler2];
    
    fiddlerClass *fiddler3 = [[fiddlerClass alloc] init];
    fiddler3.name = @"Ray Nance";
    fiddler3.dates = @"(1913–1976)";
    fiddler3.notes = @"Best known for his work as a member of Duke Ellington's band, Ray also played the violing brilliantly and remaions well known and respected for both contributions.";
    [fiddlerArray addObject:fiddler3];

    fiddlerClass *fiddler4 = [[fiddlerClass alloc] init];
    fiddler4.name = @"Stuff Smith";
    fiddler4.dates = @"(1909–1967))";
    fiddler4.notes = @"A contemporary of Stephane Grappelli, Smith is one of the best Swing Era violinists and like most jazz musicians of the day was most inspired by Luis Armstrong.";
    [fiddlerArray addObject:fiddler4];
}
@end
