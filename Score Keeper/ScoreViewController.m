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
@property (nonatomic, strong) NSMutableArray *scoreLabels;

@end


@implementation ScoreViewController
-(void)viewDidLoad{
    
    self.scoreLabels = [NSMutableArray new];
 
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:self.scrollView];
    self.title = @"Score Keeper";
    
    [self  addScoreView:0];
   
}

-(void)addScoreView:(int)index{

    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 500)];
    
    UITextField *nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(10,10, 70, 30)];
    nameTextField.backgroundColor = [UIColor whiteColor];
    nameTextField.borderStyle = UITextBorderStyleRoundedRect;
    nameTextField.placeholder = @"Name";
    nameTextField.font = [UIFont boldSystemFontOfSize:10];
    [view addSubview:nameTextField];
    
    UILabel *scoreLabel = [[UILabel alloc] initWithFrame:CGRectMake(105 , 10 , 70, 30)];
    scoreLabel.backgroundColor = [UIColor whiteColor];
    scoreLabel.layer.borderWidth = 1.0;
    scoreLabel.text = @"0";
    scoreLabel.layer.borderColor = [UIColor cyanColor].CGColor;
    
    [self.scoreLabels addObject:scoreLabel];
    [view addSubview:scoreLabel];
    
    
    UIStepper *stepper = [[UIStepper alloc] initWithFrame:CGRectMake(200, 10, 70, 30)];
    stepper.maximumValue = 100;
    stepper.minimumValue = -10;
    stepper.tag = index;
    [view addSubview:stepper];
    
    [stepper addTarget:(self) action:@selector(stepperTapped:) forControlEvents:UIControlEventValueChanged];
    
    
    [self.scrollView addSubview:view];
    

}

-(void)stepperTapped:(id)sender{
    UIStepper *stepper = sender;
    
    NSInteger indexTag = stepper.tag;
    double valueStepper = stepper.value;
    
    UILabel *scoreLabel = self.scoreLabels[indexTag];
    scoreLabel.text = [NSString stringWithFormat:@"%d", (int)valueStepper];

    
}


@end
