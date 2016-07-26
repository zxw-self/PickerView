//
//  ViewController.m
//  PickerView
//
//  Created by tianshikechuang on 16/7/26.
//  Copyright © 2016年 tianshikechuang. All rights reserved.
//

#import "ViewController.h"
#import "PickerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PickerView * picker = [PickerView showPickerViewInVCTop:self withType:PickerViewTypeData];
    
    picker.dataSources = @[@[@"aaa",@"aab"],@[@"baa",@"bab"],@[@"caa",@"cab",@"cac"]];
    
    [picker setSelectBlock:^(NSObject *data, BOOL isSureBtn) {
        NSLog(@"%@ -- %d",data,isSureBtn);
    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
