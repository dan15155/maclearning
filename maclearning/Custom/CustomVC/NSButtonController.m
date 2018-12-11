//
//  NSButtonController.h
//  maclearning
//
//  Created by henry on 2018/12/11.
//  Copyright © 2018 henry. All rights reserved.


#import "NSButtonController.h"

@interface NSButtonController ()

@end

@implementation NSButtonController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    NSButton *button = [[NSButton alloc]init];
    [button setTitle:@"欢迎进入我开发的第二世界\n～⚠️危险慎重"];
    [button  setTarget:self];
    [self.view addSubview:button];
    
//    [button mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.mas_equalTo(self.view);
//        make.centerX.mas_equalTo(1);
//        make.size.mas_equalTo(CGSizeMake(200, 200));
//    }];
}

@end
