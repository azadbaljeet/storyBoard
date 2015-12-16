//
//  thirdViewController.h
//  test
//
//  Created by apple on 02/12/15.
//  Copyright (c) 2015 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface thirdViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *text1;
@property (weak, nonatomic) IBOutlet UITextField *text2;

@property (strong, nonatomic) IBOutlet UIView *third;
@property(nonatomic, retain)NSString  *str1;
@property(nonatomic, retain)NSString  *str2;


@end
