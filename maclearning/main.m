//
//  main.m
//  maclearning
//
//  Created by henry on 2018/12/11.
//  Copyright © 2018 henry. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"
int main(int argc, const char * argv[]) {
    
    NSApplication *app = [NSApplication sharedApplication];
    id delegate = [[AppDelegate alloc] init];
    app.delegate = delegate;
    
    return NSApplicationMain(argc, argv);
}
