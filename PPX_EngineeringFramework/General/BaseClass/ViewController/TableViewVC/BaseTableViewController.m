//
//  BaseTableViewController.m
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
//

#import "BaseTableViewController.h"
#import "BaseMacro.h"
@interface BaseTableViewController ()
{
    
}
@end

@implementation BaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initBaseTableViewData];
    [self initBaseTableViewUI];
}

#pragma mark - 初始化数据部分
#pragma mark - Init Data
- (void)initBaseTableViewData
{
    mainDataArray = [[NSMutableArray alloc] init];
}

#pragma mark - Init UI
- (void)creatBaseTableView
{
    self.automaticallyAdjustsScrollViewInsets = NO;
    mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64,self.view.frame.size.width, self.view.frame.size.height - 64) style:UITableViewStyleGrouped];
    mainTableView.delegate = self;
    mainTableView.dataSource = self;
    mainTableView.backgroundColor = RGB_COLOR(@"#F0F0F0");//[UIColor clearColor];
    mainTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:mainTableView];
    
    mainTableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, CGFLOAT_MIN)];
}

- (void)initBaseTableViewUI
{
    [self creatBaseTableView];
}


#pragma mark - 事件 回调部分

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return mainDataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:@"BaseTableViewCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"BaseTableViewCell"];
    }
    return cell;
}


@end
