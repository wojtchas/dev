//
//  ViewController.h
//  MediaApp
//
//  Created by Wojciech Stasiński on 13.09.2014.
//  Copyright (c) 2014 Wojciech Stasiński. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>//

@interface ViewController : UIViewController{
    
    IBOutlet UIWebView *webWebView;
    
}

-(IBAction)btnPlayVideo;
-(IBAction)btnReadBook;
-(IBAction)btnContact;

@end

