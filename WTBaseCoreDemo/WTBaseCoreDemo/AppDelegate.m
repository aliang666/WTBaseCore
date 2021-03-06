//
//  AppDelegate.m
//  WTBaseCoreDemo
//
//  Created by admin on 2018/3/5.
//  Copyright © 2018年 admin. All rights reserved.
//

#import "AppDelegate.h"
#import "WTLaunchViewController.h"
#import "WTIndexViewController.h"
#import "WTCenterViewController.h"
#import "WTMineViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [super application:application didFinishLaunchingWithOptions:launchOptions];    
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[WTLaunchViewController new]];
    self.window.rootViewController = nav;
    [self initRoot];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)initRoot {
    WTTabBarItem *itIndex = [[WTTabBarItem alloc] init];
    itIndex.titleText = @"首页";
    itIndex.normalImage = @"ind_btn_tab_work_n";
    itIndex.selectImage = @"ind_btn_tab_work_s";
    itIndex.vc = [[WTIndexViewController alloc] init];
    
    WTTabBarItem *itCenter = [[WTTabBarItem alloc] init];
    itCenter.titleText = @"中间";
    itCenter.normalImage = @"ind_btn_tab_news_n";
    itCenter.selectImage = @"ind_btn_tab_news_s";
    itCenter.vc = [[WTCenterViewController alloc] init];
    
    WTTabBarItem *itMine = [[WTTabBarItem alloc] init];
    itMine.titleText = @"我的";
    itMine.normalImage = @"ind_btn_tab_tool_n";
    itMine.selectImage = @"ind_btn_tab_tool_s";
    itMine.vc = [[WTMineViewController alloc] init];
    
    WTTabbarController *tab = [[WTTabbarController alloc] init];
    tab.itemsArray = [NSArray arrayWithObjects:itIndex,itCenter,itMine, nil];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:tab];
    nav.navigationBarHidden = YES;
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
