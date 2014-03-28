//
//  SecondViewController.m
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

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    //create the url object (Apple website...)
    url = [[NSURL alloc] initWithString:@"http://www.apple.com"];
    
    //create the request object based on my URL
    request = [[NSURLRequest alloc] initWithURL:url];
    
    //if request is good, create the connection object based on that request
    if(request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
        //create our mutableData object
        requestData = [NSMutableData data];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    // check if we have valid data
    if(data != nil)
    {
        // add this data to our existing "requestData" object
        [requestData appendData:data];
    }
}

//this function is called when we have all the data from the request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    
    //Hold the data as a string to store and display...
    NSString *requestString = [[NSString alloc] initWithData:requestData encoding:NSASCIIStringEncoding];
    
    if(requestString != nil)
    {
        //get the path to the application documents directory
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        
        //WGet a good file system path to write string data...
        NSString *documentsDirectory = [paths objectAtIndex:0];
        if(documentsDirectory != nil)
        {
            NSString *fullPath = [[NSString alloc] initWithFormat:@"%@/%@", documentsDirectory, @"index.html"];
            if(fullPath != nil)
            {
                 //Write the string data to file
                [requestData writeToFile:fullPath atomically:true];
                
            }
        }
        
       //Display the string data in the textView of my second tab view
        myTextView.text = requestString;

    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
