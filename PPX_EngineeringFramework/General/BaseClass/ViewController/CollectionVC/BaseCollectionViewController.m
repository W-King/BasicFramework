//
//  BaseCollectionViewController.m
//  BigSport
//
//  Created by 刘凡 on 16/6/4.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "BaseCollectionViewController.h"

@interface BaseCollectionViewController ()

@end

@implementation BaseCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initBaseCollectionViewData];
    [self initBaseCollectionViewUI];
}

- (void)initBaseCollectionViewData
{
    mainDataArray = [[NSMutableArray alloc] init];
}

- (void)initBaseCollectionViewUI
{

    self.automaticallyAdjustsScrollViewInsets = NO;
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumInteritemSpacing = 1,
    layout.minimumLineSpacing = 0;
    mainCollectionView  = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height - 64) collectionViewLayout:layout];
    mainCollectionView.delegate = self;
    mainCollectionView.dataSource = self;
    mainCollectionView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:mainCollectionView];
    
    [mainCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
}

#pragma mark - UICollectionViewDataSource
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [mainDataArray count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * CellIdentifier = @"UICollectionViewCell";
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    return cell;
}

@end
