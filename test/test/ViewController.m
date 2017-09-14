//
//  ViewController.m
//  test
//
//  Created by 刘毅 on 2017/8/7.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView * vi = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    vi.backgroundColor = [UIColor redColor];
    self.navigationItem.titleView = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
