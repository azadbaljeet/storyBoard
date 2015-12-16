//
//  detailCollectionViewController.h
//  test
//
//  Created by apple on 05/12/15.
//  Copyright (c) 2015 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "detailCollectionViewCell.h"


@interface detailCollectionViewController : UICollectionViewController
@property(nonatomic, retain)NSMutableArray  *arrPassing;
@property (strong, nonatomic) IBOutlet UICollectionView *detailcollection;
@property NSIndexPath *currentindex;
@end
