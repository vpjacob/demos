//
//  ViewController.m
//  lableTFLableDemo
//
//  Created by 刘毅 on 2017/6/27.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()
@property(nonatomic,strong)UITextField *tf;
@property(nonatomic,strong)UILabel *labelone;
@property(nonatomic,strong)UILabel *labeltwo;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.labelone];
    [self.view addSubview:self.tf];
    [self.view addSubview:self.labeltwo];
    [self layoutSub];
    self.labelone.text = @"dd";
    self.labeltwo.text = @"ghjk";
    
}

- (void)layoutSub{
    [self.labelone mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(50);
        make.top.offset(50);
    }];
    
    [self.tf mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.labelone.mas_right).offset(10);
        make.centerY.mas_equalTo(self.labelone);
        make.width.mas_equalTo(50);
    }];
    
    [self.labeltwo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.tf.mas_right).offset(10);
        make.centerY.mas_equalTo(self.labelone);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UILabel *)labelone{
    if (!_labelone) {
        _labelone = [[UILabel alloc] init];
        _labelone.font = [UIFont systemFontOfSize:15];
        _labelone.text = @"ghjklddddd";
        [_labelone sizeToFit];
        
    }
    return _labelone;
}

- (UITextField *)tf{
    if (!_tf) {
        _tf = [[UITextField alloc] init];
        _tf.font = [UIFont systemFontOfSize:15];
        _tf.borderStyle = UITextBorderStyleLine;
    }
    return _tf;
}

- (UILabel *)labeltwo{
    if (!_labeltwo) {
        _labeltwo = [[UILabel alloc] init];
        _labeltwo.text = @"tghjkl;ghjkl";
        [_labeltwo sizeToFit];
        _labeltwo.font = [UIFont systemFontOfSize:15];
    }
    return _labeltwo;
}

@end
