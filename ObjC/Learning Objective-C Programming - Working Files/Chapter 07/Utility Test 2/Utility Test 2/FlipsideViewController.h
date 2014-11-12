//
//  FlipsideViewController.h
//  Utility Test 2
//
//  Created by Infinite Skills on 11/28/13.
//  Copyright (c) 2013 North Country Consulting. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;

@property (strong, nonatomic) NSString *dataString;

- (IBAction)showMeAction:(id)sender;

- (IBAction)done:(id)sender;

@end
