//
//  ViewController.m
//  BandMates
//
//  Created by Russell Gaspard on 3/7/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //Hard Code Data Into Array
    
     wordArray = [[NSArray alloc] initWithObjects:@"one", @"two", @"three", @"four", nil];

    
    
    
    
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
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MusicianCell"];
    
    if (cell != nil)
    { 
        cell.textLabel.text = [wordArray objectAtIndex:indexPath.row];
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
        NSString *selectedString = [wordArray objectAtIndex:indexPath.row];
        
        //Get the person object from the array based on the item in the tableview we clicked on
        //PersonCustomClass *currentPerson = [personArray objectAtIndex:indexPath.row];
        
        //Pass the object into the property set up for this purpose in "detailViewController" object
        //detailViewController.currentPerson = currentPerson;
        
        
        
        //NSString *selectedString = currentPerson.name;
        //NSString *descriptionString = currentPerson.description;
        
        detailViewController.nameString = selectedString;
        //detailViewController.secondaryString = descriptionString;
        
        
        
    }
}
@end
