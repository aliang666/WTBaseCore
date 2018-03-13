//
//  WTIndexViewController.m
//  WTBaseCoreDemo
//
//  Created by admin on 2018/3/7.
//  Copyright © 2018年 admin. All rights reserved.
//

#import "WTIndexViewController.h"

@interface WTIndexViewController ()

@end

@implementation WTIndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navBar.leftItemList = nil;
    self.navBar.title = @"首页";
    
    WTBarItem *it = [[WTBarItem alloc] init];
    it.itemTitle = @"更多";
    it.itemStyle = 0;
    self.navBar.rightItemList = [NSArray arrayWithObject:it];
}
@end
