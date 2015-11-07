//
//  HomePageViewController.m
//  StoryBoardDemo
//
//  Created by KenmuHuang on 15/11/7.
//  Copyright © 2015年 Kenmu. All rights reserved.
//

#import "HomePageViewController.h"

@interface HomePageViewController ()
- (void)layoutUI;
@end

@implementation HomePageViewController

#pragma mark - UIViewController Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self layoutUI];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Methods
- (void)layoutUI {
    
}

- (IBAction)smtCNewsValueChanged:(id)sender {
    self.selectedIndex = [sender selectedSegmentIndex];
}

@end
