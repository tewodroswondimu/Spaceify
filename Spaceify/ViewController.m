//
//  ViewController.m
//  Spaceify
//
//  Created by Tewodros Wondimu on 4/11/15.
//  Copyright (c) 2015 Tewodros Wondimu. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "DetailViewController.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark COLLECTION VIEW

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HubbleImagesCell" forIndexPath:indexPath];
    cell.imageView.image = [UIImage imageNamed:@"butter"];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 1;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"DetailSegue"])
    {
        CollectionViewCell *cell = (CollectionViewCell *)sender;
        DetailViewController *dvc = [segue destinationViewController];
        dvc.highResolutionImage = cell.imageView.image;
    }
}


@end
