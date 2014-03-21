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
    
    //Focus on selected Craft Beer Place
    //CLLocationCoordinate2D zoomLocation = CLLocationCoordinate2DMake(28.53f,-81.3f);
    
    //Set the zoom level
    MKCoordinateSpan zoomSpan;
    zoomSpan.latitudeDelta = 0.01f;
    zoomSpan.longitudeDelta = 0.01f;
    
    //Apply focus and zoom to the map
    mainMapView.region = MKCoordinateRegionMake(self.currentPlace.coordinates, zoomSpan);
    
    //Assign coordinates to an annotation pin
    MKPointAnnotation *point = [[MKPointAnnotation alloc ] init];
    //point.coordinate = CLLocationCoordinate2DMake(28.53f,-81.3f);
    point.coordinate = self.currentPlace.coordinates;
    
    point.title = self.currentPlace.businessName;
    //point.subtitle = @"University";
    
    //Add my pin to the map
    [mainMapView addAnnotation:point];
    
    
    //Set the business label at the top of my view
    nameLabel.text = self.currentPlace.businessName;
    
    [super viewWillAppear:(BOOL)animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
