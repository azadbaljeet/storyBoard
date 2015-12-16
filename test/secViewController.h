//
//  secViewController.h
//  test
//
//  Created by apple on 02/12/15.
//  Copyright (c) 2015 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *myTable;

@end
