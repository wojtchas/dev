//
//  AppDelegate.m
//  Todo
//
//  Created by Wojciech Stasiński on 18.08.2014.
//  Copyright (c) 2014 Wojciech Stasiński. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [self.window setBackgroundColor: [NSColor colorWithRed:0.0f green: 0.5f blue: 0.0f alpha: 100]];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(IBAction)btnButton1:(id)sender;{
    _boolBox1 = true;
    
    NSString *strTextBox1 = _txtTodo1.stringValue;
    NSString *strTextBox2 = _txtTodo2.stringValue;
    NSString *strTextBox3 = _txtTodo3.stringValue;
    NSString *strTextBox4 = _txtTodo4.stringValue;
    NSString *strTextBox5 = _txtTodo5.stringValue;
    
    if (_boolBox1 == true) {
        strTextBox1 = strTextBox1;
    }
    else {
        strTextBox1 = @"";
    }
    
    if (_boolBox2 == true) {
        strTextBox2 = strTextBox2;
    }
    else {
        strTextBox2 = @"";
    }
    
    if (_boolBox3 == true) {
        strTextBox3 = strTextBox3;
    }
    else {
        strTextBox3 = @"";
    }
    
    if (_boolBox4 == true) {
        strTextBox4 = strTextBox4;
    }
    else {
        strTextBox4 = @"";
    }
    
    if (_boolBox5 == true) {
        strTextBox5 = strTextBox5;
    }
    else {
        strTextBox5 = @"";
    }
    
    [_btnCheck1 setImage:[NSImage imageNamed:@"NSMenuOnStateTemplate"]];
    
    _lblMultiLine.stringValue = [NSString stringWithFormat:@"The tasks You completed today: \n 1. %@ \n 2. %@ \n 3. %@ \n 4. %@ \n 5. %@ ", strTextBox1, strTextBox2, strTextBox3, strTextBox4, strTextBox5];
    
    if (_boolBox1 == true && _boolBox2 == true && _boolBox3 == true && _boolBox4 == true && _boolBox5 == true){
        _lblMessage.stringValue = @"Congratulations! You made it!";
    }
    
}

-(IBAction)btnButton2:(id)sender;{
    _boolBox2 = true;
    
    NSString *strTextBox1 = _txtTodo1.stringValue;
    NSString *strTextBox2 = _txtTodo2.stringValue;
    NSString *strTextBox3 = _txtTodo3.stringValue;
    NSString *strTextBox4 = _txtTodo4.stringValue;
    NSString *strTextBox5 = _txtTodo5.stringValue;
    
    if (_boolBox1 == true) {
        strTextBox1 = strTextBox1;
    }
    else {
        strTextBox1 = @"";
    }
    
    if (_boolBox2 == true) {
        strTextBox2 = strTextBox2;
    }
    else {
        strTextBox2 = @"";
    }
    
    if (_boolBox3 == true) {
        strTextBox3 = strTextBox3;
    }
    else {
        strTextBox3 = @"";
    }
    
    if (_boolBox4 == true) {
        strTextBox4 = strTextBox4;
    }
    else {
        strTextBox4 = @"";
    }
    
    if (_boolBox5 == true) {
        strTextBox5 = strTextBox5;
    }
    else {
        strTextBox5 = @"";
    }
    
    [_btnCheck2 setImage:[NSImage imageNamed:@"NSMenuOnStateTemplate"]];
    
    _lblMultiLine.stringValue = [NSString stringWithFormat:@"The tasks You completed today: \n 1. %@ \n 2. %@ \n 3. %@ \n 4. %@ \n 5. %@ ", strTextBox1, strTextBox2, strTextBox3, strTextBox4, strTextBox5];
    
    if (_boolBox1 == true && _boolBox2 == true && _boolBox3 == true && _boolBox4 == true && _boolBox5 == true){
        _lblMessage.stringValue = @"Congratulations! You made it!";
    }

}

-(IBAction)btnButton3:(id)sender;{
    _boolBox3 = true;
    
    NSString *strTextBox1 = _txtTodo1.stringValue;
    NSString *strTextBox2 = _txtTodo2.stringValue;
    NSString *strTextBox3 = _txtTodo3.stringValue;
    NSString *strTextBox4 = _txtTodo4.stringValue;
    NSString *strTextBox5 = _txtTodo5.stringValue;
    
    if (_boolBox1 == true) {
        strTextBox1 = strTextBox1;
    }
    else {
        strTextBox1 = @"";
    }
    
    if (_boolBox2 == true) {
        strTextBox2 = strTextBox2;
    }
    else {
        strTextBox2 = @"";
    }
    
    if (_boolBox3 == true) {
        strTextBox3 = strTextBox3;
    }
    else {
        strTextBox3 = @"";
    }
    
    if (_boolBox4 == true) {
        strTextBox4 = strTextBox4;
    }
    else {
        strTextBox4 = @"";
    }
    
    if (_boolBox5 == true) {
        strTextBox5 = strTextBox5;
    }
    else {
        strTextBox5 = @"";
    }
    
    [_btnCheck3 setImage:[NSImage imageNamed:@"NSMenuOnStateTemplate"]];
    
    _lblMultiLine.stringValue = [NSString stringWithFormat:@"The tasks You completed today: \n 1. %@ \n 2. %@ \n 3. %@ \n 4. %@ \n 5. %@ ", strTextBox1, strTextBox2, strTextBox3, strTextBox4, strTextBox5];
    
    if (_boolBox1 == true && _boolBox2 == true && _boolBox3 == true && _boolBox4 == true && _boolBox5 == true){
        _lblMessage.stringValue = @"Congratulations! You made it!";
    }

}

-(IBAction)btnButton4:(id)sender;{
    _boolBox4 = true;
    
    NSString *strTextBox1 = _txtTodo1.stringValue;
    NSString *strTextBox2 = _txtTodo2.stringValue;
    NSString *strTextBox3 = _txtTodo3.stringValue;
    NSString *strTextBox4 = _txtTodo4.stringValue;
    NSString *strTextBox5 = _txtTodo5.stringValue;
    
    if (_boolBox1 == true) {
        strTextBox1 = strTextBox1;
    }
    else {
        strTextBox1 = @"";
    }
    
    if (_boolBox2 == true) {
        strTextBox2 = strTextBox2;
    }
    else {
        strTextBox2 = @"";
    }
    
    if (_boolBox3 == true) {
        strTextBox3 = strTextBox3;
    }
    else {
        strTextBox3 = @"";
    }
    
    if (_boolBox4 == true) {
        strTextBox4 = strTextBox4;
    }
    else {
        strTextBox4 = @"";
    }
    
    if (_boolBox5 == true) {
        strTextBox5 = strTextBox5;
    }
    else {
        strTextBox5 = @"";
    }
    
    [_btnCheck4 setImage:[NSImage imageNamed:@"NSMenuOnStateTemplate"]];
    
    _lblMultiLine.stringValue = [NSString stringWithFormat:@"The tasks You completed today: \n 1. %@ \n 2. %@ \n 3. %@ \n 4. %@ \n 5. %@ ", strTextBox1, strTextBox2, strTextBox3, strTextBox4, strTextBox5];
    
    if (_boolBox1 == true && _boolBox2 == true && _boolBox3 == true && _boolBox4 == true && _boolBox5 == true){
        _lblMessage.stringValue = @"Congratulations! You made it!";
    }

}

-(IBAction)btnButton5:(id)sender;{
    _boolBox5 = true;
    
    NSString *strTextBox1 = _txtTodo1.stringValue;
    NSString *strTextBox2 = _txtTodo2.stringValue;
    NSString *strTextBox3 = _txtTodo3.stringValue;
    NSString *strTextBox4 = _txtTodo4.stringValue;
    NSString *strTextBox5 = _txtTodo5.stringValue;
    
    if (_boolBox1 == true) {
        strTextBox1 = strTextBox1;
    }
    else {
        strTextBox1 = @"";
    }
    
    if (_boolBox2 == true) {
        strTextBox2 = strTextBox2;
    }
    else {
        strTextBox2 = @"";
    }
    
    if (_boolBox3 == true) {
        strTextBox3 = strTextBox3;
    }
    else {
        strTextBox3 = @"";
    }
    
    if (_boolBox4 == true) {
        strTextBox4 = strTextBox4;
    }
    else {
        strTextBox4 = @"";
    }
    
    if (_boolBox5 == true) {
        strTextBox5 = strTextBox5;
    }
    else {
        strTextBox5 = @"";
    }
    
    [_btnCheck5 setImage:[NSImage imageNamed:@"NSMenuOnStateTemplate"]];
    
    _lblMultiLine.stringValue = [NSString stringWithFormat:@"The tasks You completed today: \n 1. %@ \n 2. %@ \n 3. %@ \n 4. %@ \n 5. %@ ", strTextBox1, strTextBox2, strTextBox3, strTextBox4, strTextBox5];

    if (_boolBox1 == true && _boolBox2 == true && _boolBox3 == true && _boolBox4 == true && _boolBox5 == true){
        _lblMessage.stringValue = @"Congratulations! You made it!";
    }
    
}

-(IBAction)btnClear:(id)sender{
    _txtTodo1.stringValue = @"";
    _txtTodo2.stringValue = @"";
    _txtTodo3.stringValue = @"";
    _txtTodo4.stringValue = @"";
    _txtTodo5.stringValue = @"";
    
    _boolBox1 = false;
    _boolBox2 = false;
    _boolBox3 = false;
    _boolBox4 = false;
    _boolBox5 = false;
    
    [_btnCheck1 setImage:[NSImage imageNamed:@""]];
    [_btnCheck2 setImage:[NSImage imageNamed:@""]];
    [_btnCheck3 setImage:[NSImage imageNamed:@""]];
    [_btnCheck4 setImage:[NSImage imageNamed:@""]];
    [_btnCheck5 setImage:[NSImage imageNamed:@""]];
    
    _lblMessage.stringValue = @"Will You complete your goals today?";
    _lblMultiLine.stringValue = @"The tasks You completed today:";
    
}

@end
