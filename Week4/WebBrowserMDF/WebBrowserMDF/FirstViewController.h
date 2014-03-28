//
//  FirstViewController.h
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

@interface FirstViewController : UIViewController <UIWebViewDelegate>
{
    
    //Create outlets to allow interaction with WebView and Buttons
    IBOutlet UIWebView *myWebView;
    IBOutlet UIBarButtonItem *backButton;
    IBOutlet UIBarButtonItem *stopButton;
    
    
}

    //Set up function to handle click events
-(IBAction)onClick:(id)sender;


@end
