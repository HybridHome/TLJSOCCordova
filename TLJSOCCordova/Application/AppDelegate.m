//
//  AppDelegate.m
//  TLJSOCCordova
//
//  Created by lichuanjun on 2018/3/28.
//  Copyright © 2018年 lichuanjun. All rights reserved.
//

#import "AppDelegate.h"
#import "TLHomeViewController.h"
#import "TLAdvancedViewController.h"
#import "TLProfileViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self loadRootViewController];
    
    return YES;
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

- (void)loadRootViewController{
    //初始化
    UITabBarController *tabBarVC = [[UITabBarController alloc] init];
    tabBarVC.tabBar.tintColor = TLCommonTextColor;
    
    TLHomeViewController *homeVC = [[TLHomeViewController alloc] init];
    TLNavigationController *homeNaviVC = [[TLNavigationController alloc] initWithRootViewController:homeVC];
    homeNaviVC.tabBarItem.title = @"首页";
    homeNaviVC.tabBarItem.image = [UIImage renderingModeOriginalImageNamed:@"home"];
    homeNaviVC.tabBarItem.selectedImage = [UIImage renderingModeOriginalImageNamed:@"homeSel"];
    
    TLAdvancedViewController *advancedVC = [[TLAdvancedViewController alloc] init];
    TLNavigationController *advancedNaviVC = [[TLNavigationController alloc] initWithRootViewController:advancedVC];
    advancedNaviVC.tabBarItem.title = @"高级";
    advancedNaviVC.tabBarItem.image = [UIImage renderingModeOriginalImageNamed:@"relation"];
    advancedNaviVC.tabBarItem.selectedImage = [UIImage renderingModeOriginalImageNamed:@"relationSel"];
    
    TLProfileViewController *meVC = [[TLProfileViewController alloc] init];
    TLNavigationController *meNaviVC = [[TLNavigationController alloc] initWithRootViewController:meVC];
    meNaviVC.tabBarItem.title = @"我的";
    meNaviVC.tabBarItem.image = [UIImage renderingModeOriginalImageNamed:@"me"];
    meNaviVC.tabBarItem.selectedImage = [UIImage renderingModeOriginalImageNamed:@"meSel"];
    
    tabBarVC.viewControllers = @[homeNaviVC, advancedNaviVC, meNaviVC];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabBarVC;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
}

@end
