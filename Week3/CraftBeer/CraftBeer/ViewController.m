//
//  ViewController.m
//  CraftBeer
//
//  Created by Russell Gaspard on 3/20/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//
/*
 
 Russ Gaspard
 Project 3
 Mobile Development
 MDF1 1403
 
 */


#import "ViewController.h"
#import "DetailViewController.h"
#import "CraftBeerPlace.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //Call method to load my hard coded data into array
    [self loadBeerPlaces];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//Cell count is based on my array length - number of craft beer bars
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [barArray count];
}

//Table function to populate cells based on my object properties
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BasicCell"];
    
    if(cell != nil)
    {
        CraftBeerPlace *currentPlace = [barArray objectAtIndex:indexPath.row];
        cell.textLabel.text = currentPlace.businessName;
        //cell.detailTextLabel.text = currentBook.subTitle;
        
    }
    return cell;
}


//Function to pass chosen object to detail view on user choice
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
     //CraftBeerPlaceSelection
    
    DetailViewController *detailViewController = segue.destinationViewController;
    if(detailViewController != nil)
    {
        
        //Cast the "sender" as a TableView Cell
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *indexPath = [mainTableView indexPathForCell:cell];

        CraftBeerPlace *currentPlace = [barArray objectAtIndex:indexPath.row];
        detailViewController.currentPlace = currentPlace;
    }
}


//Function to allow return from segue
-(IBAction)done:(UIStoryboardSegue*)segue
{
    
}

//Function to hard code book review objects into array
- (void)loadBeerPlaces
{
    barArray = [[NSMutableArray alloc] init];
    
    CraftBeerPlace *place1 = [[CraftBeerPlace alloc] init];
    place1.businessName = @"Tap & Grind";
    place1.coordinates = CLLocationCoordinate2DMake(28.5421713f, -81.3801748f);
    [barArray addObject:place1];
    
    CraftBeerPlace *place2 = [[CraftBeerPlace alloc] init];
    place2.businessName = @"Redlight Redlight Beer Parlour";
    place2.coordinates = CLLocationCoordinate2DMake(28.5675373f, -81.3476639f);
    [barArray addObject:place2];
    
    CraftBeerPlace *place3 = [[CraftBeerPlace alloc] init];
    place3.businessName = @"The Gnarly Barley";
    place3.coordinates = CLLocationCoordinate2DMake(28.4589618f, -81.3657808f);
    [barArray addObject:place3];
   
    CraftBeerPlace *place4 = [[CraftBeerPlace alloc] init];
    place4.businessName = @"Oblivion Taproom";
    place4.coordinates = CLLocationCoordinate2DMake(28.5540562f, -81.3223495f);
    [barArray addObject:place4];
    
    CraftBeerPlace *place5 = [[CraftBeerPlace alloc] init];
    place5.businessName = @"The Thirsty Topher";
    place5.coordinates = CLLocationCoordinate2DMake(28.5656139f, -81.3720672f);
    [barArray addObject:place5];
    
    CraftBeerPlace *place6 = [[CraftBeerPlace alloc] init];
    place6.businessName = @"Rogue Pub";
    place6.coordinates = CLLocationCoordinate2DMake(28.5241248f, -81.3439972f);
    [barArray addObject:place6];
    
    CraftBeerPlace *place7 = [[CraftBeerPlace alloc] init];
    place7.businessName = @"Knightly Spirits";
    place7.coordinates = CLLocationCoordinate2DMake(28.3774307f, -81.4043563f);
    [barArray addObject:place7];
    
    CraftBeerPlace *place8 = [[CraftBeerPlace alloc] init];
    place8.businessName = @"House of Beer";
    place8.coordinates = CLLocationCoordinate2DMake(28.369091f, -81.427582f);
    [barArray addObject:place8];
    
    CraftBeerPlace *place9 = [[CraftBeerPlace alloc] init];
    place9.businessName = @"The Smiling Bison";
    place9.coordinates = CLLocationCoordinate2DMake(28.554946f, -81.3333227f);
    [barArray addObject:place9];
    
    CraftBeerPlace *place10 = [[CraftBeerPlace alloc] init];
    place10.businessName = @"Orlando Brewing";
    place10.coordinates = CLLocationCoordinate2DMake(28.5265007f, -81.3827057f);
    [barArray addObject:place10];

}
@end
