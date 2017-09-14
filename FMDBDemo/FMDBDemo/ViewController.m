//
//  ViewController.m
//  FMDBDemo
//
//  Created by 刘毅 on 2017/8/25.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "ViewController.h"
#import "JQFMDB.h"


@interface ViewController ()
@property (nonatomic, strong) JQFMDB *db;
@property (weak, nonatomic) IBOutlet UITextField *eggTextField;
@property (weak, nonatomic) IBOutlet UITextField *coinTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    JQFMDB *db = [JQFMDB shareDatabase];
    NSLog(@"last:%ld", (long)[db lastInsertPrimaryKeyId:@"coin"]);
    
    [db jq_createTable:@"user" dicOrModel:@{@"time":@"TEXT", @"egg":@"INTEGER",@"coin":@"REAL"}];
    
   
    
    self.db = db;
    
    
    NSLog(@"%@",NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES).lastObject);
}

- (IBAction)goAction:(id)sender {
    
    
    NSDate *date = [[NSDate alloc] init];
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"YYYY-MM-dd"];
    NSString *time = [format stringFromDate: date];
    NSLog(@"%@",time);
    
//    NSArray *arr = [self.db jq_lookupTable:@"coin" dicOrModel:@{@"time":time} whereFormat:[NSString stringWithFormat:@"where time = '\%@'",time]];
    
//    if (arr.count > 0) {
        [self.db jq_updateTable:@"coin" dicOrModel:@{@"time":time,@"egg":@(self.eggTextField.text.integerValue),@"coin":@(self.coinTextField.text.floatValue)} whereFormat:[NSString stringWithFormat:@"where time = '2017-08-25'"]];
//    }else{
//        [self.db jq_insertTable:@"user" dicOrModel:@{@"time":time,@"egg":@(self.eggTextField.text.integerValue),@"coin":@(self.coinTextField.text.floatValue)}];
//    }
    
    
//    arr = [self.db jq_lookupTable:@"coin" dicOrModel:@{@"time":time} whereFormat:[NSString stringWithFormat:@"where time = '2017-08-25'"]];
//    NSLog(@"%@",arr);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


@end
