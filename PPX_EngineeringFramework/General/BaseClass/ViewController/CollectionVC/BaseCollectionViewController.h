//
//  BaseCollectionViewController.h
//  BigSport
//
//  Created by 刘凡 on 16/6/4.
//  Copyright © 2016年 iCHSY. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseCollectionViewController : BaseViewController
<UICollectionViewDelegate,
 UICollectionViewDataSource>
{
   UICollectionView    *mainCollectionView;
   NSMutableArray      *mainDataArray;
}
@end

