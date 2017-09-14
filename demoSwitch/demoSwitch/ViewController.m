//
//  ViewController.m
//  demoSwitch
//
//  Created by 刘毅 on 2017/8/11.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "ViewController.h"
#import "TBViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)actions:(id)sender {
    TBViewController *vc = [TBViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
