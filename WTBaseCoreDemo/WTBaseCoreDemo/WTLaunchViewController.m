//
//  WTLaunchViewController.m
//  WTBaseCoreDemo
//
//  Created by admin on 2018/3/5.
//  Copyright © 2018年 admin. All rights reserved.
//

#import "WTLaunchViewController.h"

@interface WTLaunchViewController ()
{
    WTCountDownButton *_countDownCode;
}
@end

@implementation WTLaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.navBar.title = @"首页";
    self.navBar.leftItemList = nil;
    [self buildCountDown];
}

- (void)buildCountDown {
    _countDownCode = [WTCountDownButton buttonWithType:UIButtonTypeCustom];
    _countDownCode.frame = CGRectMake(81, 200, 108, 32);
    [_countDownCode setTitle:@"获取验证码" forState:UIControlStateNormal];
    _countDownCode.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_countDownCode];
    [_countDownCode countDownButtonHandler:^(WTCountDownButton*sender, NSInteger tag) {
        sender.userInteractionEnabled = NO;
        [sender startCountDownWithSecond:10];
        [sender countDownChanging:^NSString *(WTCountDownButton *countDownButton,NSUInteger second) {
            return [NSString stringWithFormat:@"剩余%zd秒",second];
        }];
        [sender countDownFinished:^NSString *(WTCountDownButton *countDownButton, NSUInteger second) {
            countDownButton.userInteractionEnabled = YES;
            return @"重新获取";
        }];
    }];
}

@end
