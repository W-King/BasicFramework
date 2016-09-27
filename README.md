# BasicFramework
1,网络请求继承 BaseRequestCollectionViewController / BaseReuqestTableViewController / BaseRequestViewController 任意一个
```
 NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:[NSString stringWithFormat:@"%ld",(long)[UIScreen mainScreen].currentMode.size.width] forKey:@"width"];
        [[NetworkRequests sharedClient] requestWithName:XTY_HomePageSecond withParameters:dic successCallBack:^(HomePageMainModel *homePageMainModel)
         {
        
             if ([homePageMainModel.status integerValue] == 1)
             {
                 [mainDataArray addObjectsFromArray:homePageMainModel.list];
                 [self requestEnd:YES haveMoreData:NO];
                 [mainCollectionView reloadData];
             }
             else
             {
                 [self requestStatusDataError:homePageMainModel.error isHeader:isHeader];
             }
         } failCallback:^(NSString *error) {
             [self requestStatusFailByIsHeader:isHeader];
         }];
 ```   
2,网络判断
```
[NetworkingStatus haveNetwokring]
```
3,本地登录
```
UserInfoMessage.h
```
4,判断登录
```
LoginServiceTool
```

