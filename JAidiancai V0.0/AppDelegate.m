//
//  AppDelegate.m
//  JAidiancai V0.0
//
//  Created by Jinshi Feng on 2017/8/12.
//  Copyright © 2017年 Jinshi. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//-----------------------------------------------------------------------------------------------------------------------------------

    //[[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:250.0/255.0 green:251.0/255.0 blue:238.0/255.0 alpha:1]];
     
    
    //UINavigationBar.appearance().tintColor = whiteCol
    //UINavigationBar.appearance().barTintColor = .skyBlue
    //UINavigationBar.appearance().isTranslucent = false
    //UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
//-----------------------------------------------------------------------------------------------------------------------------------
    
    StateController *theOnlyOneStateController = [[StateController alloc] initWith:[[StorageController alloc] init]];
    //[theOnlyOneStateController.storageController delet];
    theOnlyOneStateController.userData.userName = @"Jinshi Feng";
/*
    for (Meal *meal in theOnlyOneStateController.userData.ownedMealList){
        meal.buildDate = [NSDate date];
    }
*/
    UINavigationController *initialController = (UINavigationController *)self.window.rootViewController;
    OrderMealViewController *orderMealViewController = (OrderMealViewController *)initialController.viewControllers.firstObject;
    
    orderMealViewController.stateController = theOnlyOneStateController;
    
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


@end
