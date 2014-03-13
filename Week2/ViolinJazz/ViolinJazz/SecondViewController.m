//
//  SecondViewController.m
//  ViolinJazz
//
//  Created by Russell Gaspard on 3/13/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import "SecondViewController.h"
#import "BookReviewController.h"
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

//
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    BookReviewController *bookReviewController = segue.destinationViewController;
    if(bookReviewController != nil)
    {
        
        //Cast the "sender" as a TableView Cell
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *indexPath = [mainTableView indexPathForCell:cell];
        
        //Get Book Review object from the array based on the item in the tableview we clicked on
        bookReviewController.currentBook = [bookReviewArray objectAtIndex:indexPath.row];
        
        /*
        bookReviewController.titleString = @"Title";
        bookReviewController.subTitleString = @"SubTitle";
        bookReviewController.authorString = @"Author";
        */
        
        
    }
}


- (void)loadBookReviews
{
    bookReviewArray = [[NSMutableArray alloc] init];
    
    BookReviewClass *book1 = [[BookReviewClass alloc] init];
    book1.publication = @"publication";
    book1.reviewer = @"reviewer";
    book1.title = @"Stringprovisation";
    book1.subTitle = @": A Fingering Strategy for Jazz Improvisation";
    book1.author = @"Ari Poutianen";
    book1.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=60468415&site=ehost-live";
    [bookReviewArray addObject:book1];

    BookReviewClass *book2 = [[BookReviewClass alloc] init];
    book2.publication = @"publication";
    book2.reviewer = @"reviewer";
    book2.title = @"Stephane Grappelli";
    book2.subTitle = @": Gypsy Jazz Violin";
    book2.author = @"Tim Kliphuis";
    book2.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=52937942&site=ehost-live";
    [bookReviewArray addObject:book2];
    
    BookReviewClass *book3 = [[BookReviewClass alloc] init];
    book3.publication = @"publication";
    book3.reviewer = @"reviewer";
    book3.title = @"Grappelli Licks";
    book3.subTitle = @": The Vocabulary of Gypsy Jazz Violin";;
    book3.author = @"Tim Kliphuis";
    book3.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=94810507&site=ehost-live";
    [bookReviewArray addObject:book3];
    
    BookReviewClass *book4 = [[BookReviewClass alloc] init];
    book4.publication = @"publication";
    book4.reviewer = @"reviewer";
    book4.title = @"Free to Solo Flute/Violin";
    book4.subTitle = @": An Easy Approach to Improvising";
    book4.author = @"Rob Hughes and Paul Harvey";
    book4.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=67462011&site=ehost-live";
    [bookReviewArray addObject:book4];
    
    BookReviewClass *book5 = [[BookReviewClass alloc] init];
    book5.publication = @"publication";
    book5.reviewer = @"reviewer";
    book5.title = @"Exploring Jazz Violin";
    book5.subTitle = @" ";
    book5.author = @"Chris Haigh";
    book5.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=59340517&site=ehost-live";
    [bookReviewArray addObject:book5];
     
}
@end
