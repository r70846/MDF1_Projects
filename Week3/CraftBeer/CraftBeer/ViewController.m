//
//  ViewController.m
//  CraftBeer
//
//  Created by Russell Gaspard on 3/20/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    
    barArray = [[NSMutableArray alloc] init];
    [barArray addObject:@"Tap & Grind"];
    [barArray addObject:@"Redlight Redlight Beer Parlour"];
    [barArray addObject:@"The Gnarly Barley"];
    [barArray addObject:@"Oblivion Taproom"];
    [barArray addObject:@"The Thirsty Topher"];
    [barArray addObject:@"Rogue Pub"];
    [barArray addObject:@"Knightly Spirits"];
    [barArray addObject:@"House of Beer"];
    [barArray addObject:@"The Smiling Bison"];
    [barArray addObject:@"Orlando Brewing"];
    
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
    return 10;
}

//Table function to populate cells based on my object properties
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BasicCell"];
    
    if(cell != nil)
    {
        cell.textLabel.text = [barArray objectAtIndex:indexPath.row];
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
        
        detailViewController.businessName = barArray[indexPath.row];
    }
}



@end
