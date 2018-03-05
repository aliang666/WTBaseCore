//
//  WTAppDelegate.h
//  WTBaseCore
//
//  Created by jienliang on 17/6/23.
//  Copyright (c) 2017年 jienliang. All rights reserved.
//
#import "WTAppDelegate.h"

@interface WTAppDelegate ()
@end

@implementation WTAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //创建主窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
     return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    return YES;
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    return YES;
}

-(void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler
{
}


-(void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo
{
}

-(void)dealloc
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application {     
     UIApplication *app = [UIApplication sharedApplication];
     __block    UIBackgroundTaskIdentifier bgTask;
     bgTask = [app beginBackgroundTaskWithExpirationHandler:^{
          dispatch_async(dispatch_get_main_queue(), ^{
               if (bgTask != UIBackgroundTaskInvalid)
          {
               bgTask = UIBackgroundTaskInvalid;
          }
          });
     }];
     dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
          dispatch_async(dispatch_get_main_queue(), ^{
               if (bgTask != UIBackgroundTaskInvalid)
          {
               bgTask = UIBackgroundTaskInvalid;
          }
          });
     });
}
@end
