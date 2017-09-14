//
//  JJLabelTableViewCell.h
//  textDemo
//
//  Created by 刘毅 on 2017/6/26.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JJLableModel.h"

@interface JJLabelTableViewCell : UITableViewCell
@property(nonatomic,strong)JJLableModel *model;
@property (weak, nonatomic) IBOutlet UILabel *TextLabel;

@end
