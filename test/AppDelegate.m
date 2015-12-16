//
//  AppDelegate.m
//  test
//
//  Created by apple on 01/12/15.
//  Copyright (c) 2015 apple. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()



@end

@implementation AppDelegate
SideMenuViewController *leftMenuViewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    
    
    /*
     self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
     self.window.backgroundColor = [UIColor whiteColor];
     
     
     if ([application respondsToSelector:@selector(isRegisteredForRemoteNotifications)])
     {
     // iOS 8 Notifications
     [application registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge) categories:nil]];
     
     [application registerForRemoteNotifications];
     }
     else
     {
     // iOS < 8 Notifications
     [application registerForRemoteNotificationTypes:
     (UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeAlert | UIRemoteNotificationTypeSound)];
     }
     
     NSDictionary *remoteNotifiInfo = [launchOptions objectForKey: UIApplicationLaunchOptionsRemoteNotificationKey];
     
     if (remoteNotifiInfo) {
     [self application:application didReceiveRemoteNotification:remoteNotifiInfo];
     }
     
     
     
     NSArray *fontFamilies = [UIFont familyNames];
     
     for (int i = 0; i < [fontFamilies count]; i++)
     {
     NSString *fontFamily = [fontFamilies objectAtIndex:i];
     NSArray *fontNames = [UIFont fontNamesForFamilyName:[fontFamilies objectAtIndex:i]];
     NSLog (@"%@: %@", fontFamily, fontNames);
     }
     
     
     [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
     
     welcomeViewController *loginObj = [[welcomeViewController alloc]init];
     UINavigationController *navObj = [[UINavigationController alloc]initWithRootViewController:loginObj];
     //    [self.window setRootViewController:navObj];
     
     leftMenuViewController  = [[SideMenuViewController alloc] init];
     MFSideMenuContainerViewController *container    = [MFSideMenuContainerViewController
     containerWithCenterViewController:navObj
     leftMenuViewController:leftMenuViewController
     rightMenuViewController:nil];
     
     self.window.rootViewController = container;
     
     [self.window makeKeyAndVisible];
     */
//    ViewController *loginObj = [[ViewController alloc]init];
//    UINavigationController *navObj = [[UINavigationController alloc]initWithRootViewController:loginObj];
//    //    [self.window setRootViewController:navObj];
//    
//    leftMenuViewController  = [[SideMenuViewController alloc] init];
//    MFSideMenuContainerViewController *container    = [MFSideMenuContainerViewController
//                                                       containerWithCenterViewController:navObj
//                                                       leftMenuViewController:leftMenuViewController
//                                                       rightMenuViewController:nil];
//    
//    self.window.rootViewController = container;
//    
//    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
