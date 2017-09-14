//
//  ViewController.m
//  getuiDemo
//
//  Created by 刘毅 on 2017/8/30.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    [btn setTitle:@"跳过" forState:UIControlStateNormal];
    btn.center = self.view.center;
//    btn.layer.animationKeys =
    
    //给这个layer添加动画效果
    CABasicAnimation *pathAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    pathAnimation.duration =1.0;
    pathAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
    pathAnimation.toValue =[NSNumber numberWithFloat:1.f];
    //使视图保留到最新状态
    pathAnimation.removedOnCompletion =NO;
    pathAnimation.fillMode =kCAFillModeForwards;
    
    [btn.layer addAnimation:pathAnimation forKey:nil];
    
    [self.view addSubview:btn];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
