//
//  AppDelegate.h
//  Compound interest calculator
//
//  Created by Wojciech Stasiński on 25.08.2014.
//  Copyright (c) 2014 Wojciech Stasiński. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSTextField *txtPrincipal;
@property (assign) IBOutlet NSTextField *txtRate;
@property (assign) IBOutlet NSTextField *txtCompound;
@property (assign) IBOutlet NSTextField *txtYears;
@property (assign) IBOutlet NSTextField *lblAnswer;

@property (assign) IBOutlet NSButton *btnCalculateOUTLET;
@property (assign) IBOutlet NSButton *btnClearOUTLET;


@end

