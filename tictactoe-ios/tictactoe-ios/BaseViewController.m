//
//  BaseViewController.m
//  tictactoe-ios
//
//  Created by Jaswanth Jeenu on 25/05/16.
//  Copyright © 2016 Jaswanth Jeenu. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    delegate = [UIApplication sharedApplication].delegate;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
