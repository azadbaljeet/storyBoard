//
//  ViewController.m
//  test
//
//  Created by apple on 01/12/15.
//  Copyright (c) 2015 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NIDropDown *dropDown;
    NSArray *arrBlood;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    // Do any additional setup after loading the view, typically from a nib.
}
//- (IBAction)dropdown:(id)sender {
//    
//    
//    
//}



//-(void)TableClick:(id )recoginizer{
    - (IBAction)dropdown:(id)recoginizer{
    arrBlood   =   [[NSArray alloc] init];
    // if([recoginizer tag]==200){
    arrBlood = [NSArray arrayWithObjects: @"A+", @"A-", @"B+", @"B-", @"AB+",@"AB-",@"O+",@"O-",nil];
    //  }
    if(dropDown == nil) {
        CGFloat f = 200;
        dropDown = [[NIDropDown alloc]showDropDown:recoginizer :&f :arrBlood :nil :@"down"];
        dropDown.delegate = self;
    }
    else {
        [dropDown hideDropDown:recoginizer];
        [self rel];
    }
}
-(void)rel{
    dropDown = nil;
}

- (void)niDropDownDelegateMethod: (NIDropDown *)sender:(int)index {
    NSInteger  strid  = index;
    NSString *inStr = [NSString stringWithFormat:@"%ld", (long)strid];
    NSLog(@"%@", inStr);
    NSString   *strBloodGroup  =  [NSString stringWithFormat:@"%@", [arrBlood objectAtIndex:strid]];
     NSLog(@"%@", strBloodGroup);
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
