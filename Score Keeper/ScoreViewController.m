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
    self.title = @"Score Keeper";
    
    [self  addScoreView:1];
    
}

-(void)addScoreView:(int)index{

    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 500)];
    
    UITextField *nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(10,10, 70, 30)];
    nameTextField.backgroundColor = [UIColor whiteColor];
    nameTextField.borderStyle = UITextBorderStyleRoundedRect;
    [view addSubview:nameTextField];
    
    UILabel *scoreLabel = [[UILabel alloc] initWithFrame:CGRectMake(105 , 10 , 70, 30)];
    scoreLabel.backgroundColor = [UIColor whiteColor];
    scoreLabel.layer.borderWidth = 1.0;
    scoreLabel.layer.borderColor = [UIColor cyanColor].CGColor;
    [view addSubview:scoreLabel];
    
    UIStepper *stepper = [[UIStepper alloc] initWithFrame:CGRectMake(200, 10, 70, 30)];
    
    [view addSubview:stepper];
    
    
    [self.scrollView addSubview:view];
    
    
    
}

@end
