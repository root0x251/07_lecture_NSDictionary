//
//  AppDelegate.m
//  07_lecture_NSDictionary
//
//  Created by Slava on 20.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    // способ инициализации NSDictionary 1
    NSDictionary *dictionary = [[NSDictionary alloc]initWithObjectsAndKeys:
                                @"Petr", @"name",
                                @"Pertocv", @"lastName",
                                [NSNumber numberWithInt:22], @"age",
                                nil];
    
    // способ инициализации NSDictionary 2
    NSDictionary *dictionart2 = [NSDictionary dictionaryWithObjectsAndKeys:
                                 @"Petr2", @"name",
                                 @"Vasilev", @"lastname",
                                 @"age", [NSNumber numberWithInt:22],
                                 nil];
    
    // способ инициализации NSDictionary 3
    NSDictionary *dictionary3 = @{@"name":@"Vova",
                                  @"lastName":@"Petrov",
                                  @"age":@22};

    
    NSLog(@"=====dictionary=====");
    // способ вывода NSDictionary 1
    NSLog(@"Nsme - %@, lastName - %@, age - %d", [dictionary objectForKey:@"name"],
                                                 [dictionary objectForKey:@"lastName"],
                                                 [[dictionary objectForKey:@"age"] integerValue]);
    NSLog(@"=====dictionar2=====");
    // способ вывода NSDictionary 2
    NSLog(@"%@", dictionart2);
    
    NSLog(@"=====dictionary3=====");
    // способ вывода NSDictionary 3
    NSLog(@"%@", dictionary3);
    
    NSLog(@"=====dictionartNumber=====");
    NSInteger number = 22;
    NSDictionary *dictionartNumber = @{@"number":@(number)};
    NSLog(@"dictionartNumber\n number = %d", [[dictionartNumber objectForKey:@"number"] integerValue]);

    
    // количество значений
    NSDictionary *dictionaryCoutn = @{@"name":@"Vohcik",
                                      @"lastName":@"Petrov",
                                      @"age":@(number)};
    NSLog(@"%@, age - %d, количество - %d",dictionaryCoutn,
                                            [[dictionaryCoutn objectForKey:@"age"] integerValue],
                                            [dictionaryCoutn count]);
    NSLog(@"=====цикл=====");
    // цикл
    for (NSString *key in [dictionaryCoutn allKeys]) {
        id obj = [dictionaryCoutn objectForKey:key];
        NSLog(@"key = %@, value = %@", key, obj);
    }
     
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
