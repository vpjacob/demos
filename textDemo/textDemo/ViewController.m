//
//  ViewController.m
//  textDemo
//
//  Created by 刘毅 on 2017/6/26.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "ViewController.h"
#import "JJLabelTableViewCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,copy)NSMutableArray *objects;
@property(nonatomic,strong)UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     self.objects = [NSMutableArray arrayWithArray:@[@"In iOS 8, Apple introduces a new feature for UITableView known as Self Sizing Cells. This is seriously one of the most exciting features for the new SDK. Prior to iOS 8, if you displayed dynamic content in table view with varied row, you need to calculate the row height on your own. In summary, here are the steps to implement when using self sizing cells",@"Add auto layout constraints in your prototype cell",@"Specify the estimatedRowHeight of your table view",@"Set the rowHeight of your table view to UITableViewAutomaticDimension",@"￼tableView.estimatedRowHeight = 36.0;",@"tableView.rowHeight = UITableViewAutomaticDimension;"]];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 100;
    self.tableView.dataSource = self;
    

    [self.view addSubview:self.tableView];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    JJLabelTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"JJLabelTableViewCell" owner:self options:nil].lastObject;
        cell.TextLabel.text = self.objects[indexPath.row];
    }
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
