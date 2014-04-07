//
//  AppDelegate.m
//  wk05 fb notifications
//
//  Created by Jorge Angarita on 4/7/14.
//  Copyright (c) 2014 jorge. All rights reserved.
//

#import "AppDelegate.h"
#import "NewsFeedViewController.h"
#import "PeopleViewController.h"
#import "MessagesViewController.h"
#import "NotificationsViewController.h"
#import "MoreViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    NewsFeedViewController *vc1 = [[NewsFeedViewController alloc] init];
    PeopleViewController *vc2 = [[PeopleViewController alloc] init];
    MessagesViewController *vc3 = [[MessagesViewController alloc] init];
    NotificationsViewController *vc4 = [[NotificationsViewController alloc] init];
    MoreViewController *vc5 = [[MoreViewController alloc] init];
    
    UINavigationController *nvc1 = [[UINavigationController alloc] initWithRootViewController:vc1];
    UINavigationController *nvc2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    UINavigationController *nvc3 = [[UINavigationController alloc] initWithRootViewController:vc3];
    UINavigationController *nvc4 = [[UINavigationController alloc] initWithRootViewController:vc4];
    UINavigationController *nvc5 = [[UINavigationController alloc] initWithRootViewController:vc5];
    
    nvc1.navigationBar.barTintColor = [UIColor colorWithRed:0.25 green:0.368 blue:0.611 alpha:1];
    nvc1.navigationBar.translucent = NO;
    nvc1.navigationBar.tintColor = [UIColor whiteColor];
    
    nvc2.navigationBar.barTintColor = [UIColor colorWithRed:0.25 green:0.368 blue:0.611 alpha:1];
    nvc2.navigationBar.translucent = NO;
    nvc2.navigationBar.tintColor = [UIColor whiteColor];
    
    nvc3.navigationBar.barTintColor = [UIColor colorWithRed:0.25 green:0.368 blue:0.611 alpha:1];
    nvc3.navigationBar.translucent = NO;
    nvc3.navigationBar.tintColor = [UIColor whiteColor];
    
    nvc4.navigationBar.barTintColor = [UIColor colorWithRed:0.25 green:0.368 blue:0.611 alpha:1];
    nvc4.navigationBar.translucent = NO;
    nvc4.navigationBar.tintColor = [UIColor whiteColor];
    
    nvc5.navigationBar.barTintColor = [UIColor colorWithRed:0.25 green:0.368 blue:0.611 alpha:1];
    nvc5.navigationBar.translucent = NO;
    nvc5.navigationBar.tintColor = [UIColor whiteColor];
    
    
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, [UIFont fontWithName:@"HelveticaNeue-Medium" size:17], NSFontAttributeName, nil]];
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[nvc1,nvc2,nvc3,nvc4,nvc5];
    tabBarController.tabBar.translucent = NO;
    tabBarController.tabBar.barTintColor = [UIColor whiteColor];
    
    nvc1.tabBarItem.title = @"News feed";
    nvc2.tabBarItem.title = @"People";
    nvc3.tabBarItem.title = @"Messages";
    nvc4.tabBarItem.title = @"Notifications";
    nvc5.tabBarItem.title = @"More";
    
    nvc1.tabBarItem.image = [UIImage imageNamed:@"NewsFeed"];
    nvc2.tabBarItem.image = [UIImage imageNamed:@"People"];
    nvc3.tabBarItem.image = [UIImage imageNamed:@"Messages"];
    nvc4.tabBarItem.image = [UIImage imageNamed:@"Notifications"];
    nvc5.tabBarItem.image = [UIImage imageNamed:@"More"];
    
    self.window.rootViewController = tabBarController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
