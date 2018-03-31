//
//  TLJSOCViewController.m
//  TLJSOCCordova
//
//  Created by lichuanjun on 2018/3/28.
//  Copyright © 2018年 lichuanjun. All rights reserved.
//

#import "TLJSOCViewController.h"

@interface TLJSOCViewController ()

@end

@implementation TLJSOCViewController

- (void)viewDidLoad {
//    self.startPage = @"http://m.baidu.com";
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = NO;
}

@end
