//
//  ScoreViewController.m
//  Score Keeper
//
//  Created by Thomas Fox on 4/28/2558 BE.
//  Copyright (c) 2558 BE DevMountain. All rights reserved.
//

#import "ScoreViewController.h"

@interface ScoreViewController ()

@property (nonatomic, strong) UIScrollView *scrollView;

@end


@implementation ScoreViewController
-(void)viewDidLoad{
 
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:self.scrollView];
    
}

@end
