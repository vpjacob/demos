//
//  ViewController.m
//  AddressDemo
//
//  Created by 刘毅 on 2017/8/17.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pushAction:(id)sender {
    self.dataArray =     @[@{@"title":@"推荐",@"list":@[@{@"港澳台热门目的地":@[@"香港",@"澳门",@"台北",@"高雄"]},@{@"香港":@[@"香港"]},@{@"澳门":@[@"澳门"]},@{@"台湾":@[@"台湾",@"台北",@"屏东",@"南投",@"高雄",@"新北",@"花莲",@"台中",@"桃园",@"宜兰",@"新竹市",@"彰化"]}]}
                           ];
    NSInteger dicCount = self.dataArray.count;
    NSLog(@"%zd------dicCount",dicCount);
    
    NSArray *listDicArray = self.dataArray[0][@"list"];
    NSInteger listDicCount = listDicArray.count;
    NSLog(@"%zd------listDicCount",listDicCount);
    
    NSDictionary *dic = listDicArray[0];
    NSString *dicKeyStr = dic.allKeys.firstObject;
    NSLog(@"%@------dicKeyStr",dicKeyStr);
    
    NSArray *arr = dic.allValues.firstObject;
    NSLog(@"%@------dicKeyStr",arr);
    NSLog(@"%zd------dicKeyStr",arr.count);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
