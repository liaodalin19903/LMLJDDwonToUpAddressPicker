//
//  ViewController.m
//  LMLJDDwonToUpAddressPickerDemo
//
//  Created by 优谱德 on 16/9/20.
//  Copyright © 2016年 优谱德. All rights reserved.
//

#import "ViewController.h"
#import "LMLJDDownToUpAddressPicker.h"

@interface ViewController ()
{
    LMLJDDownToUpAddressPicker *lml_ad;
}
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initUI];
}

- (void)initUI {

    lml_ad = [[LMLJDDownToUpAddressPicker alloc] initWithFrame:self.view.frame];
    lml_ad.isOpenState = NO;
    
    /* 这个是获取自己的定位，用于设置默认地址 */
    
    //    AMapLocationReGeocode *regeocode = [UserInfoStatic sharedUserInfoStatic].regeocode;
    //    NSString *address = [NSString stringWithFormat:@"%@-%@-%@", regeocode.province, regeocode.city, regeocode.district];
    
    NSString *address = @"四川省-成都市-高新区";
    
    if ([address isEqualToString:@"(null)-(null)-(null)"]) {
        
        address = @"四川省-成都市-武侯区";
    }
    
    [lml_ad setDefaultAddress:address];
    __weak typeof(self) weakSelf = self;
    lml_ad.addressBlock = ^(NSString *addressStr) {
        
        NSLog(@"%@", addressStr);
        [weakSelf changeAddress:addressStr];
    };
    
    [self.view addSubview:lml_ad];
}

- (IBAction)show:(UIButton *)sender {
    
    
    [lml_ad show];
}

- (void)changeAddress:(NSString *)addressStr {

    self.addressLabel.text = addressStr;
}

@end
