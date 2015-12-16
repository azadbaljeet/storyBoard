//
//  myCollectionViewController.m
//  test
//
//  Created by apple on 03/12/15.
//  Copyright (c) 2015 apple. All rights reserved.
//

#import "myCollectionViewController.h"

@interface myCollectionViewController ()
{
    NSMutableArray  *arr    ;
    NSMutableArray  *arrLabel    ;
    NSIndexPath  *currentIndex;
}

@end

@implementation myCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    arr =   [[NSMutableArray alloc] initWithObjects:@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"7.jpg",@"8.jpg",@"9.jpg",@"10.jpg",@"11.jpg",@"12.jpg",@"13.jpg",@"14.jpg",@"16.jpg",@"20.jpg",@"21.jpg",@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"7.jpg",@"8.jpg",@"9.jpg",@"10.jpg",@"11.jpg",@"12.jpg",@"13.jpg",@"14.jpg",@"16.jpg",@"20.jpg",@"21.jpg", nil];
    
    arrLabel    =   [[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"21",@"22",@"23",@"24",@"25",@"26",@"27",@"28",@"29",@"30",@"31",@"32",@"33",@"34", nil];
    
    
     // arr =   [[NSMutableArray alloc] initWithObjects:@"iphone.png", nil];
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    
    
//    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
//    layout.minimumInteritemSpacing  =   4.0f;
//    layout.minimumLineSpacing=35.0f;
    
    
//    UICollectionViewFlowLayout *layout1=[[UICollectionViewFlowLayout alloc] init];
//    layout1.minimumInteritemSpacing  =   4.0f;
//    layout1.minimumLineSpacing=20.0f;
    
//    self.collectionView.tag=10;
//    UICollectionView *view  =   (UICollectionView*)[self.view viewWithTag:10];

    
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

//- (void)viewWillLayoutSubviews {
//    [self.collectionView.collectionViewLayout invalidateLayout];
//}


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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return arr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  //  UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
  MyCollectionViewCell *myCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
  
  myCell = [collectionView   dequeueReusableCellWithReuseIdentifier:@"MyCell" forIndexPath:indexPath];
    
    UIImage *image;
  
    image   =   [UIImage imageNamed:[NSString stringWithFormat:@"%@", [arr objectAtIndex:indexPath.row]]];
    myCell.cellImage.image  =   image;
    myCell.cellLabel.text   =   [arrLabel objectAtIndex:indexPath.row];
    myCell.cellLabel.textColor  =   [UIColor redColor];
    myCell.cellLabel.textAlignment  =   NSTextAlignmentCenter;
  //  myCell.backgroundColor  =   [UIColor greenColor];
    
    return myCell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
  //  detailCollectionViewController *detail =   [[detailCollectionViewController alloc] init];
    currentIndex   = indexPath;
   
  
   // [self.navigationController pushViewController:detail animated:NO];
     [self performSegueWithIdentifier:@"detail" sender:self];
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"detail"])
    {
        
        detailCollectionViewController *detail = [segue destinationViewController];
         detail.arrPassing   =   arr;
        detail.currentindex =   currentIndex;
    }
}

//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
//    return self.collectionView.frame.size;
//}
//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
//{
//    UIImage *image;
//    long row = [indexPath row];
//    
//    image = [UIImage imageNamed:arr[row]];
//     NSLog(@"%ld", image.size);
//    return image.size;
//    
//   
//}
//- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//    CGSize result = [[UIScreen mainScreen] bounds].size;
//    CGFloat scale = [UIScreen mainScreen].scale;
//    result = CGSizeMake(result.width * scale, result.height * scale);
//    CGFloat cellWidth =  [[UIScreen mainScreen] bounds].size.width - 20;
//    CGFloat cellHeight = [[UIScreen mainScreen] bounds].size.height - 120;
//    
//    return CGSizeMake(cellWidth, cellHeight);
//    
//    
//}
#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
