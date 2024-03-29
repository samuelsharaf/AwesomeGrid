//
//  GridViewController.m
//  AwesomeGrid
//
//  Created by Sam Sharaf on 4/29/13.
//  Copyright (c) 2013 Sam Sharaf. All rights reserved.
//

#import "GridViewController.h"
#import "GridCell.h"

@interface GridViewController () {
    
    NSArray* numbers;
}

@end

@implementation GridViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSMutableArray *numbersToAdd = [NSMutableArray array];
    
    for (int i = 1; i <= 200; i++) {
        [numbersToAdd addObject:@(i)];
    }
    numbers = numbersToAdd;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - GridViewController specific
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return numbers.count;
    
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    GridCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"GridCell" forIndexPath:indexPath];
    
    NSNumber *number = numbers[indexPath.row];
    cell.label.text = [number description];
    
    return cell;
}
@end
