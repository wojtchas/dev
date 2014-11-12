//
//  DetailViewController.h
//  MDA Sample
//
//  Created by Infinite Skills on 10/28/13.
//  Copyright (c) 2013 Infinite Skills. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
