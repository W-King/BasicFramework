//
//  BaseTableViewController.h
//  BigSport
//
//  Created by 刘凡 on 16/5/17.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseTableViewController : BaseViewController
<UITableViewDataSource,
UITableViewDelegate>
{
    UITableView    *mainTableView;
    NSMutableArray *mainDataArray;
}
@end
