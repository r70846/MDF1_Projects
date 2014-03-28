//
//  FirstViewController.m
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

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    
    //create a url object (Apple website...)
    NSURL *url = [[NSURL alloc] initWithString:@"http://www.apple.com"];
    if(url != nil)
    {
        
        //create a request object based on my URL
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
        if(request != nil)
        {
            //If the the webView can't go back, disable the back button
            if(!myWebView.canGoBack)
            {
                backButton.enabled = false;
            }
            
            //Adjust page to approiate size for mobile browser
            myWebView.scalesPageToFit = true;
            
            
            //launch my page (Apple website...)
            [myWebView loadRequest:request];
        }
    }
    [super viewDidLoad];

}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    //When view starts loading enable the stop button
    stopButton.enabled = true;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    //When view finishes loading disable the stop button
    //check again for appropriate back button state
    stopButton.enabled = false;
    backButton.enabled = (myWebView.canGoBack);
}

    //function to handle click events
-(IBAction)onClick:(id)sender
{
    UIBarButtonItem *item = (UIBarButtonItem*)sender;
    if(item != nil)
    {
        //back button was clicked
        if(item.tag == 0)
        {
            //If we can go back, go back.
            if(myWebView.canGoBack)
            {
                [myWebView goBack];
                
                //check again for appropriate back button state
                backButton.enabled = (myWebView.canGoBack);
            }
        }
        //stop button  was clicked
        else if (item.tag == 1)
        {
            //If we are loading, stop loading
            if(myWebView.isLoading)
            {
                [myWebView stopLoading];
            }
        }
        //reload button was clicked
        else if (item.tag == 2)
        {
            //If we're not loading, reload now..
            if(!myWebView.isLoading)
            {
                [myWebView reload];
            }
        }
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
