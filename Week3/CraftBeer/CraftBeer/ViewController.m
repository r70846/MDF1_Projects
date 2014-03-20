//
//  ViewController.m
//  CraftBeer
//
//  Created by Russell Gaspard on 3/20/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

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



//Cell count is based on my array length - number of book reviews
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
    place1.coordinates = @"28.5421713, -81.3801748";
    [barArray addObject:place1];
    
    CraftBeerPlace *place2 = [[CraftBeerPlace alloc] init];
    place2.businessName = @"Redlight Redlight Beer Parlour";
    place2.coordinates = @"28.5675373, -81.3476639";
    [barArray addObject:place2];
    
    CraftBeerPlace *place3 = [[CraftBeerPlace alloc] init];
    place3.businessName = @"The Gnarly Barley";
    place3.coordinates = @"28.4589618, -81.3657808";
    [barArray addObject:place3];
    
    CraftBeerPlace *place4 = [[CraftBeerPlace alloc] init];
    place4.businessName = @"Oblivion Taproom";
    place4.coordinates = @"28.5540562, -81.3223495";
    [barArray addObject:place4];
    
    CraftBeerPlace *place5 = [[CraftBeerPlace alloc] init];
    place5.businessName = @"The Thirsty Topher";
    place5.coordinates = @"28.5656139, -81.3720672";
    [barArray addObject:place5];
    
    CraftBeerPlace *place6 = [[CraftBeerPlace alloc] init];
    place6.businessName = @"Rogue Pub";
    place6.coordinates = @"28.5241248, -81.3439972";
    [barArray addObject:place6];
    
    CraftBeerPlace *place7 = [[CraftBeerPlace alloc] init];
    place7.businessName = @"Knightly Spirits";
    place7.coordinates = @"28.3774307, -81.4043563";
    [barArray addObject:place7];
    
    CraftBeerPlace *place8 = [[CraftBeerPlace alloc] init];
    place8.businessName = @"House of Beer";
    place8.coordinates = @"28.369091, -81.427582";
    [barArray addObject:place8];
    
    CraftBeerPlace *place9 = [[CraftBeerPlace alloc] init];
    place9.businessName = @"The Smiling Bison";
    place9.coordinates = @"28.554946, -81.3333227";
    [barArray addObject:place9];
    
    CraftBeerPlace *place10 = [[CraftBeerPlace alloc] init];
    place10.businessName = @"Orlando Brewing";
    place10.coordinates = @"28.5265007, -81.3827057";
    [barArray addObject:place10];
}
@end
