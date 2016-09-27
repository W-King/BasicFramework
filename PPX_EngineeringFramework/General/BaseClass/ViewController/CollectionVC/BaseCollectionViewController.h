//
//  BaseCollectionViewController.h
//  PPX_EngineeringFramework
//
//  Created by pipixia on 16/9/26.
//  Copyright © 2016年 pipixia. All rights reserved.
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

