//
//  AppDelegate.m
//  maclearning
//
//  Created by henry on 2018/12/11.
//  Copyright © 2018 henry. All rights reserved.
//

#import "AppDelegate.h"
#import "EWHomeViewController.h"
@interface AppDelegate ()
@property (nullable, strong) NSWindow *window;
@property(strong,nonatomic)EWHomeViewController*homeVC;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    NSUInteger style =  NSWindowStyleMaskTitled | NSWindowStyleMaskClosable |NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable;
    float wide = [[NSScreen mainScreen] frame].size.width/2;
    float high = [[NSScreen mainScreen] frame].size.height/2;
    self.window = [[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, wide,high) styleMask:style backing:NSBackingStoreBuffered defer:YES];
    self.window.title = @"我的世界";
    self.window.backgroundColor=[NSColor orangeColor];
    [self.window makeKeyAndOrderFront:nil];
    [self.window center];
    //CCLog(@"hello word");
    self.homeVC = [[EWHomeViewController alloc] init];
    [self.window setContentViewController:self.homeVC];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
