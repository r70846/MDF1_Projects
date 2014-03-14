//
//  SecondViewController.m
//  ViolinJazz
//
//  Created by Russell Gaspard on 3/13/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//
/*
 
 Russ Gaspard
 Project 2
 Mobile Development
 MDF1 1403
 
 */

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

//Cell count is based on my array length - number of book reviews
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [bookReviewArray count];
}

//Table function to populate cells based on my object properties
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



//Function to pass chosen object to detail view on user choice
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
        
    }
}


//Function to allow return from segue
-(IBAction)done:(UIStoryboardSegue*)segue
{
     
}

//Function to hard code book review objects into array
- (void)loadBookReviews
{
    bookReviewArray = [[NSMutableArray alloc] init];
    
    BookReviewClass *book1 = [[BookReviewClass alloc] init];
    book1.source = @"Strad. Jun2011, Vol. 122 Issue 1454, p98-98. 1/3p.";
    book1.reviewer = @"Chris Garrick";
    book1.title = @"Stringprovisation";
    book1.subTitle = @": A Fingering Strategy for Jazz Improvisation";
    book1.author = @"Ari Poutianen";
    book1.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=60468415&site=ehost-live";
    book1.exerpt = @"It is a thought-provoking and thorough exploration of the fundamentals of violin jazz. Even if you might get lost in its prose, Poutiainen’s magnum opus offers much food for thought.";
    [bookReviewArray addObject:book1];

    BookReviewClass *book2 = [[BookReviewClass alloc] init];
    book2.source = @"Strad. Sep2010, Vol. 121 Issue 1445, p113-113. 1/3p. 1 Color Photograph.";
    book2.reviewer = @"Ariane Todes";
    book2.title = @"Stephane Grappelli";
    book2.subTitle = @": Gypsy Jazz Violin";
    book2.author = @"Tim Kliphuis";
    book2.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=52937942&site=ehost-live";
    book2.exerpt = @"The book is aimed at good players with no jazz background, but those already proficient in jazz will benefit from the specific detail. This is a thorough, informed and stimulating volume.";
    [bookReviewArray addObject:book2];
    
    BookReviewClass *book3 = [[BookReviewClass alloc] init];
    book3.source = @"Strad. Mar2014, Vol. 125 Issue 1487, p108-108. 1/3p.";
    book3.reviewer = @"David Lasserson";
    book3.title = @"Grappelli Licks";
    book3.subTitle = @": The Vocabulary of Gypsy Jazz Violin";;
    book3.author = @"Tim Kliphuis";
    book3.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=94810507&site=ehost-live";
    book3.exerpt = @"The book lays bare Grappelli's labour-saving tricks, and the way he created combinations of remarkably few motifs in ways that make his idiom sound endless.";
    [bookReviewArray addObject:book3];
    
    BookReviewClass *book4 = [[BookReviewClass alloc] init];
    book4.source = @"Strad. Dec2011, Vol. 122 Issue 1460, p105-105. 1/4p.";
    book4.reviewer = @"David Lasserson";
    book4.title = @"Free to Solo Flute/Violin";
    book4.subTitle = @": An Easy Approach to Improvising";
    book4.author = @"Rob Hughes and Paul Harvey";
    book4.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=67462011&site=ehost-live";
    book4.exerpt = @"This is all really useful material in helping to build confi dence and vocabulary in soloing, although the lack of violinspecific guidance means that players will need a fair degree of confidence to approach the book in the first place.";
    [bookReviewArray addObject:book4];
    
    BookReviewClass *book5 = [[BookReviewClass alloc] init];
    book5.source = @"Strad. Apr2011, Vol. 122 Issue 1452, p121-121. 1p.";
    book5.reviewer = @"Chris Garrick";
    book5.title = @"Exploring Jazz Violin";
    book5.subTitle = @" ";
    book5.author = @"Chris Haigh";
    book5.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=59340517&site=ehost-live";
    book5.exerpt = @"Haigh has embraced his subject fully and coherently, touching on just about every conceivable aspect of jazz violin. It is a comprehensive beginner’s guide to jazz violin – a triumph!";
    [bookReviewArray addObject:book5];
     
}
@end
