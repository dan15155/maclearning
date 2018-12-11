//
//  EWHomeViewController.h
//  maclearning
//
//  Created by henry on 2018/12/11.
//  Copyright © 2018 henry. All rights reserved.


#import "HomeCell.h"

@interface HomeCell()
    
@end

@implementation HomeCell
    
- (void)setString:(NSString *)string {
        NSTextField *label = [[NSTextField alloc] initWithFrame:self.bounds];
        label.stringValue = string;
        label.editable = NO;
        label.bordered = NO;
        label.backgroundColor = [NSColor clearColor];
        label.textColor=[NSColor redColor];
        [self addSubview:label];
}
    
- (void)setBackgroundStyle:(NSBackgroundStyle)backgroundStyle
{
    [super setBackgroundStyle:backgroundStyle];
    self.label.cell.backgroundStyle = NSBackgroundStyleLight;
}
- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end
