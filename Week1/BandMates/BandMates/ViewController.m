//
//  ViewController.m
//  BandMates
//
//  Created by Russell Gaspard on 3/7/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "BandMateClass.h"
#import "CustomCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //Hard Code BandMate Objects
    BandMateClass *musician1 = [[BandMateClass alloc] init];
    musician1.name = @"Russ Gaspard";
    musician1.instrument = @"Violin";
    musician1.phone = @"(321)439-0605";
    musician1.instImage = [UIImage imageNamed:@"guitar80b.gif"];
    
    BandMateClass *musician2 = [[BandMateClass alloc] init];
    musician2.name = @"Dave Gibbs";
    musician2.instrument = @"Keys";
    musician2.phone = @"(321)464-8967";
    musician2.instImage = [UIImage imageNamed:@"keys80b.gif"];
    
    BandMateClass *musician3 = [[BandMateClass alloc] init];
    musician3.name = @"Shawn Bayne";
    musician3.instrument = @"Drums";
    musician3.phone = @"(407)898-4264";
    musician3.instImage = [UIImage imageNamed:@"drums80b.gif"];

    //Put all of our Band Mate objects into an array of musicians
    musicianArray = [[NSMutableArray alloc] initWithObjects:musician1, musician2, musician3, nil];
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [musicianArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MusicianCell"];
    
    if (cell != nil)
    {
        BandMateClass *currentMusician = [musicianArray objectAtIndex:indexPath.row];
        
        [cell refreshCellWithInfo:currentMusician.name instString:currentMusician.instrument cellImage:currentMusician.instImage];
        
        
        //cell.textLabel.text = currentMusician.name;
        //cell.detailTextLabel.text = @"this is a test";
        
    }
    return cell;
}

//Called when we go to the detail view
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailViewController *detailViewController = segue.destinationViewController;
    
    if (detailViewController != nil)
    {
        
        //Cast the "sender" as a TableView Cell
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *indexPath = [mainTableView indexPathForCell:cell];
        
        //Get the string from the array based on the item in the tableview we clicked on
        
        BandMateClass *currentMusician = [musicianArray objectAtIndex:indexPath.row];
        
        detailViewController.currentMusician = currentMusician;
        
        
        //NSString *selectedString = currentMusician.name;;
        
        //Get the person object from the array based on the item in the tableview we clicked on
        //PersonCustomClass *currentPerson = [personArray objectAtIndex:indexPath.row];
        
        //Pass the object into the property set up for this purpose in "detailViewController" object
        //detailViewController.currentPerson = currentPerson;
        
        
        
        //NSString *selectedString = currentPerson.name;
        //NSString *descriptionString = currentPerson.description;
        
        //detailViewController.nameString = selectedString;
        //detailViewController.secondaryString = descriptionString;
        
        
        
    }
}
@end
