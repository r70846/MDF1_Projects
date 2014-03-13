//
//  SecondViewController.m
//  ViolinJazz
//
//  Created by Russell Gaspard on 3/13/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    
    wordArray = [[NSMutableArray alloc] initWithObjects:@"one",@"two",@"three",@"four",@"five", nil];
    
    
    
    
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
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BasicCell"];
    if(cell != nil)
    {
        cell.textLabel.text = [wordArray objectAtIndex:indexPath.row];
        cell.detailTextLabel.text = @"Subtitle";
        
    }
    return cell;
}

@end
