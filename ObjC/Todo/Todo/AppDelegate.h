//
//  AppDelegate.h
//  Todo
//
//  Created by Wojciech Stasiński on 18.08.2014.
//  Copyright (c) 2014 Wojciech Stasiński. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (assign) IBOutlet NSTextField *txtTodo1;
@property (assign) IBOutlet NSTextField *txtTodo2;
@property (assign) IBOutlet NSTextField *txtTodo3;
@property (assign) IBOutlet NSTextField *txtTodo4;
@property (assign) IBOutlet NSTextField *txtTodo5;

@property (assign) IBOutlet NSButton *btnCheck1;
@property (assign) IBOutlet NSButton *btnCheck2;
@property (assign) IBOutlet NSButton *btnCheck3;
@property (assign) IBOutlet NSButton *btnCheck4;
@property (assign) IBOutlet NSButton *btnCheck5;

@property (assign) IBOutlet NSTextField *lblMultiLine;
@property (assign) IBOutlet NSTextField *lblMessage;

@property (nonatomic) BOOL boolBox1;
@property (nonatomic) BOOL boolBox2;
@property (nonatomic) BOOL boolBox3;
@property (nonatomic) BOOL boolBox4;
@property (nonatomic) BOOL boolBox5;

-(IBAction)btnButton1:(id)sender;
-(IBAction)btnButton2:(id)sender;
-(IBAction)btnButton3:(id)sender;
-(IBAction)btnButton4:(id)sender;
-(IBAction)btnButton5:(id)sender;

-(IBAction)btnClear:(id)sender;


@end

