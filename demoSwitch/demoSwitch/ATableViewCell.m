//
//  ATableViewCell.m
//  demoSwitch
//
//  Created by 刘毅 on 2017/8/11.
//  Copyright © 2017年 vpjacob. All rights reserved.
//

#import "ATableViewCell.h"

@implementation ATableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self == [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self startUI];
    }
    return self;
}

- (void)startUI{
    UISwitch *sv = [[UISwitch alloc] initWithFrame:CGRectMake(10, 10, 79, 79)];
    //    sv.center = cell.center;
    [self.contentView addSubview:sv];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
