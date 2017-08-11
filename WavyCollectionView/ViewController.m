//
//  ViewController.m
//  WavyCollectionView
//
//  Created by Tye Blackie on 2017-08-10.
//  Copyright © 2017 Tye Blackie. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "ViewFlowLayout.h"

@interface ViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>


@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    ViewFlowLayout *viewFlowLayout = [[ViewFlowLayout alloc] init];
    self.collectionView.collectionViewLayout = viewFlowLayout;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 15;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
//    cell.backgroundColor = [UIColor redColor];
//    UILabel *label = (UILabel*)[cell viewWithTag:100];
//    label.text = [NSString stringWithFormat:@"%ld/%ld", (long)indexPath.section, (long)indexPath.item];
    
    return cell;
}

@end
