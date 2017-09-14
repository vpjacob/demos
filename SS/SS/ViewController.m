//
//  ViewController.m
//  SS
//
//  Created by 刘毅 on 2017/9/6.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "ViewController.h"
#import "JJSliderView.framework/Headers/LogViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    LogViewController *vc = [LogViewController new];
    [vc logDetail];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
