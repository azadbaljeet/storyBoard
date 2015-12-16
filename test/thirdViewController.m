//
//  thirdViewController.m
//  test
//
//  Created by apple on 02/12/15.
//  Copyright (c) 2015 apple. All rights reserved.
//

#import "thirdViewController.h"


@interface thirdViewController ()

@end

@implementation thirdViewController
@synthesize third;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _text1.text =   _str1;
    _text2.text =   _str2;
   
}
- (IBAction)btn:(id)sender {
    
    [self performSegueWithIdentifier:@"last" sender:self];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
