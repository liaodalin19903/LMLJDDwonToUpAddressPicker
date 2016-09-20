//
//  LMLJDDownToUpAddressPicker.h
//  LMLJDDwonToUpAddressPicker
//
//  Created by 优谱德 on 16/7/18.
//  Copyright © 2016年 优谱德. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^RefreshAddressBlock)(NSString *addressStr);  // 刷新地址

@interface LMLJDDownToUpAddressPicker : UIView

// eg：全国，四川省，四川省-成都市
@property (nonatomic, copy) NSString *address;

@property (nonatomic, assign) BOOL isOpenState;  // 是否是打开的状态

@property (nonatomic, strong) UILabel *provinceLabel;  // 省
@property (nonatomic, strong) UILabel *cityLabel;      // 市
@property (nonatomic, strong) UILabel *countryLabel;   // 县

@property (nonatomic, copy) RefreshAddressBlock addressBlock;  // 更新地址

- (instancetype)initWithFrame:(CGRect)frame;

// 设置头部的高度
- (void)setHeadHeight:(float)headHeight;

// 设置行高
- (void)setRowHeight:(float)rowHeight;

// 设置一个tabview多少行
- (void)setNumberOfRow:(int)numberOfRow;

// 设置是否需要可以动画的线（地址labe下面）
- (void)setNeedAniLine:(BOOL)needAniLine;

// 设置默认的位置
- (void)setDefaultAddress:(NSString *)defaultAddress;

// 弹出tab
- (void)show;
// 弹起tab
- (void)dismiss;


@end
