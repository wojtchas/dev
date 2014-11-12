//
//  MasterViewController.h
//  Breakpoints
//
//  Created by Infinite Skills on 12/2/13.
//  Copyright (c) 2013 North Country Consulting. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
