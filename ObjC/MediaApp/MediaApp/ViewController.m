//
//  ViewController.m
//  MediaApp
//
//  Created by Wojciech Stasiński on 13.09.2014.
//  Copyright (c) 2014 Wojciech Stasiński. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btnPlayVideo{
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"video" withExtension:@"mov"];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
    
    [webWebView loadRequest:requestURL];
    
    
}

-(IBAction)btnReadBook{
    
    NSString *pdfFile = [[NSBundle mainBundle] pathForResource:@"sample" ofType:@"pdf"];
    
    NSURL *url = [NSURL fileURLWithPath:pdfFile];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
    
    [webWebView loadRequest:requestURL];
}

-(IBAction)btnContact{
    
    MFMailComposeViewController *mailController = [[MFMailComposeViewController alloc] init];
    mailController.mailComposeDelegate = self;
    
    [mailController setSubject:@"Question"];
    [mailController setMessageBody:@"Twoja stara goli klate." isHTML:NO];
    
    
    
    [self presentModalViewController:mailController animated:YES];
}




@end
