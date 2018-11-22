//
//  KDViewController.m
//  KDObjectKit
//
//  Created by kevinmenglu on 11/22/2018.
//  Copyright (c) 2018 kevinmenglu. All rights reserved.
//

#import "KDViewController.h"
#import "KDNoDataView.h"

@interface KDViewController ()

@end

@implementation KDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    KDNoDataView *view = [KDNoDataView noDataView:CGRectMake(100, 200, 200, 200) withContent:@"sdjafla;" WithTouchBlock:^{
        
    }];
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
