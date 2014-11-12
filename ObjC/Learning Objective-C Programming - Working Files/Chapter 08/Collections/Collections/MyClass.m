//
//  MyClass.m
//  Collections
//
//  Created by Infinite Skills on 11/29/13.
//  Copyright (c) 2013 North Country Consulting. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

- (void)testMethod {
    NSString *myString;
    myString = @"abc";
    
    NSNumber *myNumber;
    myNumber = [NSNumber numberWithInt:17];
    myNumber = @17;
    
    NSArray *myArray;
    myArray = @[myString, myNumber];
    myArray = @[@"abc", @17];
    
    NSDictionary *myDictionary;
    myDictionary = @{@"key1" : @"abc",
                     @"key2" : @17};
    
    NSObject *myElement;
    for (NSObject *element in myArray) {
        myElement = element;
    }
    
    for (NSObject *key in myDictionary) {
        myElement = [myDictionary objectForKey: key];
    }
}

@end
