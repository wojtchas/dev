//
//  DetailViewController.h
//  Breakpoints
//
//  Created by Infinite Skills on 12/2/13.
//  Copyright (c) 2013 North Country Consulting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
