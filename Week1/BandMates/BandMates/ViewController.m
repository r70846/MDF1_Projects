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
    /*
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
    */
    
    //Calll method to load my hard coded data into array
    [self loadData];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick
{
    //Toggle switch: Put my tableview into edit mode (or out of edit mode)
    mainTableView.editing = !mainTableView.isEditing;
}



//Gets called as soon as the delete button is pressed
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Are we in delete mode
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        //Remove the data from the data array
        [musicianArray removeObjectAtIndex:indexPath.row];
        
        //Remove the line item from tableview
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
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


-(IBAction)done:(UIStoryboardSegue*)segue
{

    
}
//Function to load hard coded data into array of BandMate objects
- (void)loadData
{
    //Built mutable array to hold musicians (BandMate objects)
    musicianArray = [[NSMutableArray alloc] init];
    
    //Hard Code BandMate Objects and add into the array
    BandMateClass *musician1 = [[BandMateClass alloc] init];
    musician1.name = @"Russ Gaspard";
    musician1.instrument = @"Guitar";
    musician1.phone = @"321-439-0605";
    musician1.email = @"russg@fullsail.edu";
    musician1.notes = @"Russ also plays fiddle, mandolin and harmonica";
    musician1.instImage  = [UIImage imageNamed:@"guitar80b.gif"];
	[musicianArray addObject:musician1];
    
    BandMateClass *musician2 = [[BandMateClass alloc] init];
    musician2.name = @"Dave Cox";
    musician2.instrument = @"Bass";
    musician2.phone = @"321-331-2791";
    musician2.email = @"dcox@bassman.com";
    musician2.notes = @"Dave is not as interested in learning material but always ready to jam";
    musician2.instImage  = [UIImage imageNamed:@"bass80b.gif"];
	[musicianArray addObject:musician2];
    
    BandMateClass *musician3 = [[BandMateClass alloc] init];
    musician3.name = @"Dave Gibbs";
    musician3.instrument = @"Keys";
    musician3.phone = @"407-529-8561";
    musician3.email = @"dgibbs@fullsail.com";
    musician3.notes = @"Hard to get Dave to commit to a gig but always worth it";
    musician3.instImage  = [UIImage imageNamed:@"keys80b.gif"];
	[musicianArray addObject:musician3];
    
    BandMateClass *musician4 = [[BandMateClass alloc] init];
    musician4.name = @"John Paul McCune";
    musician4.instrument = @"Drums";
    musician4.phone = @"321-806-8618";
    musician4.email = @"jp@fit.com";
    musician4.notes = @"Love this guy";
    musician4.instImage  = [UIImage imageNamed:@"drums80b.gif"];
	[musicianArray addObject:musician4];
    
    BandMateClass *musician5 = [[BandMateClass alloc] init];
    musician5.name = @"Jenn Willsey";
    musician5.instrument = @"Vocals";
    musician5.phone = @"407-252-4264";
    musician5.email = @"jwillsey@redhead.gov";
    musician5.notes = @"Sings a fine lead but incredible harmony as well";
    musician5.instImage  = [UIImage imageNamed:@"vocals80b.gif"];
	[musicianArray addObject:musician5];
    
    BandMateClass *musician6 = [[BandMateClass alloc] init];
    musician6.name = @"Matt Tuten";
    musician6.instrument = @"Mandolin";
    musician6.phone = @"407-310-7424";
    musician6.email = @"mtuten@gmail.com";
    musician6.notes = @"Mandolin player";
    musician6.instImage  = [UIImage imageNamed:@"other80b.gif"];
	[musicianArray addObject:musician6];
    
    BandMateClass *musician7 = [[BandMateClass alloc] init];
    musician7.name = @"Nik Ritchie";
    musician7.instrument = @"Drums";
    musician7.phone = @"321-439-0605";
    musician7.email = @"nrichie@fullsail.com";
    musician7.notes = @"Nik works with me at Full Sail. Great drummer";
    musician7.instImage  = [UIImage imageNamed:@"drums80b.gif"];
	[musicianArray addObject:musician7];
    
    BandMateClass *musician8 = [[BandMateClass alloc] init];
    musician8.name = @"Derrick Harvin";
    musician8.instrument = @"Keys";
    musician8.phone = @"321-331-2791";
    musician8.email = @"dharvin@fullsail.com";
    musician8.notes = @"Killer Jazz player";
    musician8.instImage  = [UIImage imageNamed:@"keys80b.gif"];
	[musicianArray addObject:musician8];
    
    BandMateClass *musician9 = [[BandMateClass alloc] init];
    musician9.name = @"Ryan Walsh";
    musician9.instrument = @"Bass";
    musician9.phone = @"407-678-1765";
    musician9.email = @"ryan@gmail.com";
    musician9.notes = @"Crazy bass player";
    musician9.instImage  = [UIImage imageNamed:@"bass80b.gif"];
	[musicianArray addObject:musician9];
    
    BandMateClass *musician10 = [[BandMateClass alloc] init];
    musician10.name = @"Steve Prince";
    musician10.instrument = @"Drums";
    musician10.phone = @"321-808-9264";
    musician10.email = @"prince@fit.com";
    musician10.notes = @"Very funky";
    musician10.instImage  = [UIImage imageNamed:@"drums80b.gif"];
	[musicianArray addObject:musician10];
    
    BandMateClass *musician11 = [[BandMateClass alloc] init];
    musician11.name = @"Joe DeBottis";
    musician11.instrument = @"Drums";
    musician11.phone = @"407-252-8214";
    musician11.email = @"debottisy@htmail.com";
    musician11.notes = @"Har to reach";
    musician11.instImage  = [UIImage imageNamed:@"drums80b.gif"];
	[musicianArray addObject:musician11];
    
    BandMateClass *musician12 = [[BandMateClass alloc] init];
    musician12.name = @"Bobby Spec";
    musician12.instrument = @"Guitar";
    musician12.phone = @"407-310-7424";
    musician12.email = @"bspeck@gmail.com";
    musician12.notes = @"Plays Mandolin as well";
    musician12.instImage  = [UIImage imageNamed:@"guitar80b.gif"];
	[musicianArray addObject:musician12];
    
    BandMateClass *musician13 = [[BandMateClass alloc] init];
    musician13.name = @"Ric Scoles";
    musician13.instrument = @"Banjo";
    musician13.phone = @"407-324-8562";
    musician13.email = @"dscoles@fullsail.com";
    musician13.notes = @"Banjo player";
    musician13.instImage  = [UIImage imageNamed:@"other80b.gif"];
	[musicianArray addObject:musician13];
    
    BandMateClass *musician14 = [[BandMateClass alloc] init];
    musician14.name = @"Fred Tully";
    musician14.instrument = @"Vocals";
    musician14.phone = @"321-806-8618";
    musician14.email = @"jp@fit.com";
    musician14.notes = @"Great with a ballad";
    musician14.instImage  = [UIImage imageNamed:@"vocals80b.gif"];
	[musicianArray addObject:musician14];
    
    BandMateClass *musician15 = [[BandMateClass alloc] init];
    musician15.name = @"Sam Smitty";
    musician15.instrument = @"Bass";
    musician15.phone = @"407-252-6123";
    musician15.email = @"smitty@gmail.com";
    musician15.notes = @"Nice guy";
    musician15.instImage  = [UIImage imageNamed:@"bass80b.gif"];
	[musicianArray addObject:musician15];
    
    BandMateClass *musician16 = [[BandMateClass alloc] init];
    musician16.name = @"Mike Mabry";
    musician16.instrument = @"Guitar";
    musician16.phone = @"407-310-4235";
    musician16.email = @"mabry@hotmail.com";
    musician16.notes = @"Plays too many noates";
    musician16.instImage  = [UIImage imageNamed:@"guitar80b.gif"];
	[musicianArray addObject:musician16];
    
    BandMateClass *musician17 = [[BandMateClass alloc] init];
    musician17.name = @"Vince Brooks";
    musician17.instrument = @"Keys";
    musician17.phone = @"321-439-0605";
    musician17.email = @"nrichie@fullsail.com";
    musician17.notes = @"Mostly jazz";
    musician17.instImage  = [UIImage imageNamed:@"keys80b.gif"];
	[musicianArray addObject:musician17];
    
    BandMateClass *musician18 = [[BandMateClass alloc] init];
    musician18.name = @"Tom McCune";
    musician18.instrument = @"Bass";
    musician18.phone = @"407-644-2791";
    musician18.email = @"tmccune@fullsail.com";
    musician18.notes = @"Good player";
    musician18.instImage  = [UIImage imageNamed:@"bass80b.gif"];
	[musicianArray addObject:musician18];
    
    BandMateClass *musician19 = [[BandMateClass alloc] init];
    musician19.name = @"Sally Tangen";
    musician19.instrument = @"Guitar";
    musician19.phone = @"407-878-1765";
    musician19.email = @"tangen@gmail.com";
    musician19.notes = @"Nice";
    musician19.instImage = [UIImage imageNamed:@"guitar80b.gif"];
	[musicianArray addObject:musician19];
    
    BandMateClass *musician20 = [[BandMateClass alloc] init];
    musician20.name = @"Hal Leonard";
    musician20.instrument = @"Drums";
    musician20.phone = @"321-551-2397";
    musician20.email = @"hleanard@fit.com";
    musician20.notes = @"";
    musician20.instImage  = [UIImage imageNamed:@"drums80b.gif"];
	[musicianArray addObject:musician20];
    
}
@end
