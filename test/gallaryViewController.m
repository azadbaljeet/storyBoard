//
//  gallaryViewController.m
//  test
//
//  Created by apple on 03/12/15.
//  Copyright (c) 2015 apple. All rights reserved.
//

#import "gallaryViewController.h"

@interface gallaryViewController ()

@end

@implementation gallaryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)gallary:(id)sender {
    [self performSegueWithIdentifier:@"gallery" sender:self];
}
- (IBAction)segment:(id)sender {
  
    [self performSegueWithIdentifier:@"segmment" sender:self];

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
