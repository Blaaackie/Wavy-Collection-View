//
//  ViewFlowLayout.m
//  WavyCollectionView
//
//  Created by Tye Blackie on 2017-08-10.
//  Copyright © 2017 Tye Blackie. All rights reserved.
//

#import "ViewFlowLayout.h"

@implementation ViewFlowLayout

-(void)prepareLayout{
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc]init];
    
    for (UICollectionViewLayoutAttributes *superAttribute in superAttrs) {
        
        UICollectionViewLayoutAttributes *attribute = superAttribute.copy;
        
        CGFloat randomY = arc4random_uniform(self.collectionView.frame.size.height);
        
        CGFloat randomeHeight = randomY;
        
        attribute.frame = CGRectMake(attribute.frame.origin.x, randomY, attribute.frame.size.width, randomeHeight);
        
        [newAttrs addObject:attribute];
    }
    
    return newAttrs;
}

@end
