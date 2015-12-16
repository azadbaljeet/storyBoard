//
//  secViewController.m
//  test
//
/*
 
 UITableViewCell  *cell  =   [tableView cellForRowAtIndexPath:indexPath];
 NSString  *str  =cell.textLabel.text;
 NSString *str1  =   cell.detailTextLabel.text;
 
 
 NSLog(@"%@\t%@", str,str1);

 
 */
//  Created by apple on 02/12/15.
//  Copyright (c) 2015 apple. All rights reserved.
//

#import "secViewController.h"
#import "thirdViewController.h"
@interface secViewController ()
{
    NSString  *str;
     NSString  *str1;
}

@end

@implementation secViewController
@synthesize myTable;
- (void)viewDidLoad {
    [super viewDidLoad];
    myTable.delegate=self;
    myTable.dataSource=self;
    [myTable reloadData];
    myTable.separatorColor  =   [UIColor clearColor];
    
    // Do any additional setup after loading the view.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString  *identifier    =   @"CELL";
    
    UITableViewCell  *cell  =   [tableView dequeueReusableCellWithIdentifier:identifier];
    if(cell==nil){
        
        cell    =   [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
  //  if(indexPath.row%2==0){
   //     cell.backgroundColor    =   [UIColor  greenColor];
 //   }
  //  cell.textLabel.text =   @"INDIA";
    cell.detailTextLabel.text    =   @"UTTAR PRADESH";
    
    
  //  cell.backgroundColor    =   [UIColor redColor];
    
    return cell;
    
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell  *cell  =   [tableView cellForRowAtIndexPath:indexPath];
   str  =   [NSString stringWithFormat:@"%@", cell.textLabel.text];
    str1  =   [NSString stringWithFormat:@"%@", cell.detailTextLabel.text];
    NSLog(@"%@", str);
    
 //   thirdViewController  *third =   [[thirdViewController alloc] init];
    
   // [self.navigationController pushViewController:third animated:NO];
    
    [self performSegueWithIdentifier:@"123" sender:self];
    
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"123"])
    {
      
        thirdViewController *vc = [segue destinationViewController];
        vc.str1= str;
        vc.str2= str1;
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
