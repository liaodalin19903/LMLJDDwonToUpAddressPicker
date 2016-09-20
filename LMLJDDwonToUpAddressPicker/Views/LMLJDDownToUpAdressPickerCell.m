//
//  LMLJDAdressPickerCell.m
//  仿照京东地址选择器
//
//  Created by 优谱德 on 16/6/29.
//  Copyright © 2016年 优谱德. All rights reserved.
//

#import "LMLJDDownToUpAdressPickerCell.h"

@implementation LMLJDDownToUpAdressPickerCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    [self initUI];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

#pragma mark - init

- (void)initUI {

    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(0, self.contentView.bounds.size.height - 1, [UIScreen mainScreen].bounds.size.width, 1)];
    line.backgroundColor = [UIColor colorWithWhite:242.0/255.0 alpha:1.0];
    [self addSubview:line];
    
    
    self.selectedBackgroundView = [[UIView alloc] initWithFrame:self.frame];
    self.selectedBackgroundView.backgroundColor = [UIColor colorWithWhite:242.0/255.0 alpha:1.0];
}


@end
