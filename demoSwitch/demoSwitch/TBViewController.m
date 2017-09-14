//
//  TBViewController.m
//  demoSwitch
//
//  Created by 刘毅 on 2017/8/11.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "TBViewController.h"
#import "ATableViewCell.h"

@interface TBViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation TBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.tableView];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 40;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    ATableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ATableViewCell"];
//    if (cell == nil) {
//        cell  = [[NSBundle mainBundle] loadNibNamed:@"ATableViewCell" owner:self options:nil].lastObject;
//    }
//    return cell;
    
    
        // 定义cell标识  每个cell对应一个自己的标识
        NSString *CellIdentifier = [NSString stringWithFormat:@"cell%ld%ld",indexPath.section,indexPath.row];
        // 通过不同标识创建cell实例
        ATableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        // 判断为空进行初始化  --（当拉动页面显示超过主页面内容的时候就会重用之前的cell，而不会再次初始化）
        if (!cell) {
            cell = [[ATableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        }
        // 对cell 进行简单地数据配置
    //    cell.textLabel.text = @"text";
    //    cell.detailTextLabel.text = @"text";
    //    cell.imageView.image = [UIImage imageNamed:@"4.png"];
    
    NSLog(@"%zd---%zd",indexPath.row,indexPath.section);
    
        
        
        return cell;
    
}


// 方案二  同样通过不让他重用cell 来解决重复显示 不同的是每个cell对应一个标识
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    // 定义cell标识  每个cell对应一个自己的标识
//    NSString *CellIdentifier = [NSString stringWithFormat:@"cell%ld%ld",indexPath.section,indexPath.row];
//    // 通过不同标识创建cell实例
//    ATableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    // 判断为空进行初始化  --（当拉动页面显示超过主页面内容的时候就会重用之前的cell，而不会再次初始化）
//    if (!cell) {
//        cell = [[ATableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
//    }
//    // 对cell 进行简单地数据配置
////    cell.textLabel.text = @"text";
////    cell.detailTextLabel.text = @"text";
////    cell.imageView.image = [UIImage imageNamed:@"4.png"];
//    
//    
//    
//    
//    
//    return cell;
//}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
//        [_tableView registerClass:[ATableViewCell class] forCellReuseIdentifier:@"dd"];
    }
    return _tableView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
