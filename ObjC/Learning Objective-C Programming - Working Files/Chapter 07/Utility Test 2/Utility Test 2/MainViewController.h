//
//  MainViewController.h
//  Utility Test 2
//
//  Created by Infinite Skills on 11/28/13.
//  Copyright (c) 2013 North Country Consulting. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate, UIPopoverControllerDelegate>

@property (strong, nonatomic) UIPopoverController *flipsidePopoverController;
@property (weak, nonatomic) IBOutlet UIButton *showMeButton;
@property (strong, nonatomic) NSString *dataString;

- (IBAction)showMeAction:(id)sender;


@end
