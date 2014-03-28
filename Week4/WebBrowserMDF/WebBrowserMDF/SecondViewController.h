//
//  SecondViewController.h
//  WebBrowserMDF
//
//  Created by Russell Gaspard on 3/27/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//
/*
 
 Russ Gaspard
 Project 4
 Mobile Development
 MDF1 1403
 
 */

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <NSURLConnectionDataDelegate>
{
    
    //Create outlet to interact with my textView
    IBOutlet UITextView *myTextView;
    
    
    //Set up objects to handle URL Connection and to hold the data we pull down...
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    NSMutableData *requestData;
}
@end
