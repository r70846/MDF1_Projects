//
//  FirstViewController.m
//  WebBrowserMDF
//
//  Created by Russell Gaspard on 3/27/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    
    //create url object
    NSURL *url = [[NSURL alloc] initWithString:@"http://www.apple.com"];
    if(url != nil)
    {
        //create request object based on URL
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
        if(request != nil)
        {
            
            if(!myWebView.canGoBack)
            {
               // backButton.enabled = false;
            }
            
            myWebView.scalesPageToFit = true;
            
            [myWebView loadRequest:request];
        }
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
