//
//  segmentViewController.m
//  test
//
//  Created by apple on 14/12/15.
//  Copyright (c) 2015 apple. All rights reserved.
//

#import "segmentViewController.h"

@interface segmentViewController ()

@end

@implementation segmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)seg:(id)sender {
    
    //segmentControl
    if (_segmentControl.selectedSegmentIndex == 0) {
        
        NSLog(@"first value is %ld", _segmentControl.selectedSegmentIndex);
    } else if(_segmentControl.selectedSegmentIndex == 1) {
        
        
        
        NSLog(@"second value is %ld", _segmentControl.selectedSegmentIndex);
   } else if(_segmentControl.selectedSegmentIndex == 2) {
        NSLog(@"third value is %ld", _segmentControl.selectedSegmentIndex);
    }

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
