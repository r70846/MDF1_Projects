//
//  SecondViewController.m
//  ViolinJazz
//
//  Created by Russell Gaspard on 3/13/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import "SecondViewController.h"
#import "BookReviewClass.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    
    //Call method to load my hard coded book review data into array
    [self loadBookReviews];

    
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
    return [bookReviewArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BookReviewClass *currentBook = [bookReviewArray objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BasicCell"];
    if(cell != nil)
    {
        cell.textLabel.text = currentBook.title;
        cell.detailTextLabel.text = currentBook.subTitle;
        
    }
    return cell;
}


- (void)loadBookReviews
{
    bookReviewArray = [[NSMutableArray alloc] init];
    
    BookReviewClass *book1 = [[BookReviewClass alloc] init];
    book1.publication = @"publication";
    book1.reviewer = @"reviewer";
    book1.url = @"url";
    book1.title = @"title";
    book1.subTitle = @"subtitle";
    book1.author = @"author";
    [bookReviewArray addObject:book1];
    
    BookReviewClass *book2 = [[BookReviewClass alloc] init];
    book2.publication = @"publication";
    book2.reviewer = @"reviewer";
    book2.url = @"url";
    book2.title = @"title";
    book2.subTitle = @"subtitle";
    book2.author = @"author";
    [bookReviewArray addObject:book2];
    
    BookReviewClass *book3 = [[BookReviewClass alloc] init];
    book3.publication = @"publication";
    book3.reviewer = @"reviewer";
    book3.url = @"url";
    book3.title = @"title";
    book3.subTitle = @"subtitle";
    book3.author = @"author";
    [bookReviewArray addObject:book3];
    
    BookReviewClass *book4 = [[BookReviewClass alloc] init];
    book4.publication = @"publication";
    book4.reviewer = @"reviewer";
    book4.url = @"url";
    book4.title = @"title";
    book4.subTitle = @"subtitle";
    book4.author = @"author";
    [bookReviewArray addObject:book4];
    
    BookReviewClass *book5 = [[BookReviewClass alloc] init];
    book5.publication = @"publication";
    book5.reviewer = @"reviewer";
    book5.url = @"url";
    book5.title = @"title";
    book5.subTitle = @"subtitle";
    book5.author = @"author";
    [bookReviewArray addObject:book5];
    
}
@end
