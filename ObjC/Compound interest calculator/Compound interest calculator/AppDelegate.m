//
//  AppDelegate.m
//  Compound interest calculator
//
//  Created by Wojciech Stasiński on 25.08.2014.
//  Copyright (c) 2014 Wojciech Stasiński. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@end

@implementation AppDelegate
            
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(IBAction)btnCalculateACTION:(id)sender{
    
    float fPrincipal = _txtPrincipal.floatValue;
    float fRate = _txtRate.floatValue / 100;
    float fCompound = _txtCompound.floatValue;
    float fYears = _txtYears.floatValue;
    float fAnswer;
    
    fAnswer = fPrincipal * powf((1 + (fRate / fCompound)), fCompound * fYears);
    
    NSString *strAnswer = [NSString stringWithFormat:@"$%0.2f", fAnswer];
    
    _lblAnswer.stringValue = strAnswer;
    
}

-(IBAction)btnClearACTION:(id)sender{
    
    _txtCompound.stringValue = @"";
    _txtPrincipal.stringValue = @"";
    _txtRate.stringValue = @"";
    _txtYears.stringValue = @"";
    
    _lblAnswer.stringValue = @"Answer";
}

@end
