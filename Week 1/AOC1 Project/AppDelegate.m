//
//  AppDelegate.m
//  AOC1 Project
//
//  Created by Alex Behannon on 11/21/12.
//  Copyright (c) 2012 Alex Behannon. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    // 1) Create a new Empty Application Project
    //Done!
    
    
    // 2) Create a variable using the float data type. Cast the float to an int and using NSLog, output both the initial float value as well as the int value.
    
    float floatynum = 3.5;
    int integernum = floatynum;
    
    NSLog(@"floatynum=%f, integernum=%d", floatynum, integernum);
    
    
    // 3) Perform an AND, OR comparison. Use float, int and BOOL types. BOOL values should be YES or NO and written in all caps.
    
    int bulletcount = 5;
    BOOL zombieseverywhere = YES;
    
    if ((bulletcount >= 0) && (zombieseverywhere == YES)) {
        NSLog(@"You have bullets, and there are zombies. Do something!");
    } else if ((bulletcount <= 0) || (zombieseverywhere == NO)) {
        NSLog(@"There are either no zombies around, or you are out of bullets. Either way, get scrounging.");
    }
    
    float zombiesaround = 3.5;
    BOOL needammo = NO;
    
    if ((zombiesaround <= 0) || (needammo == YES)) {
        NSLog(@"Seriouisly. You either need ammo, or there are no zombies. Go loot if you want to live.");
    } else {
        NSLog(@"You have ammo, or theres zombies around. Try not to die.");
    }

    
    
    // 4) Use an if, else if and else check using any of the data types of your choice.
    
    int bulletamount = 1;
    
    if (bulletamount >= 1) {
        NSLog(@"You have bullets!");
    } else if (bulletamount == 0) {
        NSLog(@"You are aout of bullets!");
    } else {
        NSLog(@"Apparently you have negative bullets.");
    }
    
    
    // 5) Perform a single for loop printing out values to the console
    
    NSLog(@"Counting amount of bullets fired.");
    
    for (int x=0; x<=5; x++) {
        NSLog(@"%d", x);
    }
    
    NSLog(@"Done.");
    
    
    // 6) Perform a nested loop printing out values to the console
    // couldnt exactly think of a theme for this.
    
    for (int x=1; x<=5; x++) {
        NSLog(@"Initial number: %d", x);
        for (int y=1; y<=x; y++){
            NSLog(@"%d", y);
        }
    }
    
    
    // 7) Perform a while loop that increments an int variable and outputs to the console.//
    int numcount= 5;
    while (numcount > 0) {
        NSLog(@"Bullets: %d", numcount);
        numcount--;
    }
    
    //DOOONE
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
