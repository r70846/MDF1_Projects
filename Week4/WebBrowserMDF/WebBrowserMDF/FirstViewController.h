//
//  FirstViewController.h
//  WebBrowserMDF
//
//  Created by Russell Gaspard on 3/27/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UIWebViewDelegate>
{
    IBOutlet UIWebView *myWebView;
    IBOutlet UIBarButtonItem *backButton;
}

-(IBAction)onClick:(id)sender;


@end
