//
//  CEAppDelegate.m
//  DrawPractice
//
//  Created by Coco on 15/12/13.
//  Copyright (c) 2013 Coco. All rights reserved.
//

#import "HKAppDelegate.h"
#import "HKDataMgr.h"

#define kIsNotFirstTimeLaunch @"kIsNotFirstTimeLaunch"
#define kLevel @"kLevel"
#define kCustomLevelWidth @"kCustomLevelWidth"
#define kCustomLevelHeight @"kCustomLevelHeight"
#define kCustomLevelMine @"kCustomLevelMine"
#define kNeedSound @"kNeedSound"
#define kNeedVibration @"kNeedVibration"

@implementation HKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    HKDataMgr *dataMgr = [HKDataMgr shared];
    if (![dataMgr boolForKey:kIsNotFirstTimeLaunch]) {
        [dataMgr setInteger:0 forKey:kLevel];
        [dataMgr setBool:YES forKey:kIsNotFirstTimeLaunch];
        [dataMgr setInteger:9 forKey:kCustomLevelWidth];
        [dataMgr setInteger:9 forKey:kCustomLevelHeight];
        [dataMgr setInteger:10 forKey:kCustomLevelMine];
        [dataMgr setBool:YES forKey:kNeedSound];
        [dataMgr setBool:YES forKey:kNeedVibration];

    }
//    HKPreferenceViewController *preferenceViewController = [HKPreferenceViewController new];
//    self.navigationController = [[UINavigationController alloc]initWithRootViewController:preferenceViewController];
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
