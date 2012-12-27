//
//  calcalViewController.m
//  calcal
//
//  Created by Ashkan Nasseri on 12/26/12.
//  Copyright (c) 2012 Ashkan Nasseri. All rights reserved.
//

#import "calcalViewController.h"

@implementation calcalViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"ID"];
    
}
// collection view data source methods ////////////////////////////////////
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 31;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ID" forIndexPath:indexPath];
    
    UIImage* buttonImage = [[UIImage alloc] init];
    [buttonImage drawInRect:CGRectMake(0, 0, 40, 40)];
    
    
    UIImageView *cellView = [[UIImageView alloc] init];
    cellView.frame = CGRectMake(0, 0, 20, 20);
    [cellView setBackgroundColor: [UIColor blueColor]];
    
    [cell.contentView addSubview:cellView];
    
    UIImageView *cellView2 = [[UIImageView alloc] init];
    cellView2.frame = CGRectMake(0, 20, 20, 20);
    [cellView2 setBackgroundColor: [UIColor redColor]];
    
    [cell.contentView addSubview:cellView2];
    
    
    return cell;
}


#pragma mark - delegate methods
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.frame = [UIScreen mainScreen].bounds;
    NSMutableAttributedString *attribString = [[NSMutableAttributedString alloc] init];
    for ( int i = 0; i<< 31 ; i++)
    {
        [attribString appendAttributedString:[[NSAttributedString alloc]
                                              initWithString:
                                              [NSString stringWithFormat:@"%@", @"ashkanzzz"]]];
    }
    UITextView *content = [[UITextView alloc] initWithFrame:vc.view.bounds];
    content.attributedText = attribString;
    content.textAlignment = NSTextAlignmentCenter;
    content.editable = NO;
    [vc.view addSubview:content];
    UIButton *b = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    b.frame = CGRectMake(vc.view.bounds.size.width/2 - 40, vc.view.bounds.size.height - 100, 80, 60);
    [b setTitle:@"Close" forState:UIControlStateNormal];
    [b addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    [vc.view addSubview:b];
    vc.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:vc animated:YES completion:nil];
}

/////////////////////////////////////////////////////////////////////////////////
@end
