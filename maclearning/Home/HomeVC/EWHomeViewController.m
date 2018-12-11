//
//  EWHomeViewController.h
//  maclearning
//
//  Created by henry on 2018/12/11.
//  Copyright © 2018 henry. All rights reserved.

#import "EWHomeViewController.h"
#import "HomeCell.h"
#import "NSButtonController.h"

@interface EWHomeViewController ()<NSTableViewDelegate,NSTableViewDataSource>
@property(nonatomic,strong)NSTableView * tableView;
@property(nonatomic,strong)NSMutableArray * dataArray;
    
@end

@implementation EWHomeViewController


- (void)loadView{
    
    NSRect frame = [[[NSApplication sharedApplication] mainWindow] frame];
    self.view = [[NSView alloc] initWithFrame:frame];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSButton *button = [[NSButton alloc]init];
    [button setTitle:@"欢迎进入我开发的世界\n～⚠️危险慎重"];
    [button  setTarget:self];
    [button  setAction:@selector(buttonClick:)];
    [self.view addSubview:button];
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.centerX.mas_equalTo(1);
        make.size.mas_equalTo(CGSizeMake(200, 200));
    }];
    
}


-(void)buttonClick:(NSButton*)sender
{
    [self setTableView];
}

-(void)setTableView
{
    _dataArray=[[NSMutableArray alloc]init];
    [_dataArray addObject:@"NSButton"];
    [_dataArray addObject:@"NSTextField"];
    
    NSScrollView * scrollView= [[NSScrollView alloc] init];
    scrollView.hasVerticalScroller  = YES;
    scrollView.frame = self.view.bounds;
    [self.view addSubview:scrollView];
    
    _tableView = [[NSTableView alloc]initWithFrame:self.view.bounds];
    NSTableColumn * column = [[NSTableColumn alloc]initWithIdentifier:@"test"];
    [_tableView addTableColumn:column];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView reloadData];
    scrollView.contentView.documentView = _tableView;
}
//返回行数
-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return _dataArray.count;
}
    
-(id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    return _dataArray[row];
}
//行高
-(CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row{
     return 64;
}
//每个单元内的view
-(NSView*)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn*)tableColumn row:(NSInteger)row{

    NSString *dataString =@"HomeCell";
    HomeCell *contentView = [tableView makeViewWithIdentifier:dataString owner:self];
    if (!contentView) {
        contentView = [[HomeCell alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    }
    contentView.string =_dataArray[row];
    return contentView;
}
//是否可以选中单元格
-(BOOL)tableView:(NSTableView *)tableView shouldSelectRow:(NSInteger)row{
    return YES;
}
    
//选中的响应
-(void)tableViewSelectionDidChange:(nonnull NSNotification* )notification{
    NSTableView *tableView = notification.object;
    NSLog(@"---selection row %ld", tableView.selectedRow);
}


@end
