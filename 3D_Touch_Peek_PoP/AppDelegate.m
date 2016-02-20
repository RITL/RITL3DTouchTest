//
//  AppDelegate.m
//  3D_Touch_Peek_PoP
//
//  Created by YueWen on 16/2/19.
//  Copyright © 2016年 YueWen. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

#ifdef __IPHONE_9_0
    [self createShortcutItems];
#endif
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

-(void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    NSLog(@"shortcutType = %@",shortcutItem.type);
}




- (void)describe
{
//    //必须设置值的键
//    UIApplicationShortcutItemType       //位置标识符
//    UIApplicationShortcutItemTitle      //标题
//    
//    //可选设置值得键
//    UIApplicationShortcutItemIconType   //显示图标系统类型
//    UIAPPLicationShortcutItemIconFile   //显示图标的图片名
//    UIAPPLicationShortcutItemUserInfo   //用户信息字典信息，自定义参数
    
}



#ifdef __IPHONE_9_0 //因为这个类是iOS 9_0 之后的，所以预编译指令，在iOS 9_0 之后进行编译
/**
 *  创建3D Touch选项
 */
- (void)createShortcutItems
{
    //最简单的形式
    UIApplicationShortcutItem * item1 = [[UIApplicationShortcutItem alloc]initWithType:@"item1"
                                                                        localizedTitle:@"Item1"];
    
    //可以自定义选项
    UIApplicationShortcutIcon * icon2 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
    UIApplicationShortcutItem * item2 = [[UIApplicationShortcutItem alloc]initWithType:@"item2"
                                                                        localizedTitle:@"Item2"
                                                                     localizedSubtitle:@"Item2"
                                                                                  icon:icon2
                                                                              userInfo:nil];
    //使用自定义的图片定义选项
    UIApplicationShortcutIcon * icon3 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"delete"];
    UIApplicationShortcutItem * item3 = [[UIApplicationShortcutItem alloc]initWithType:@"item3"
                                                                        localizedTitle:@"Item3"
                                                                     localizedSubtitle:@"item3"
                                                                                  icon:icon3
                                                                              userInfo:nil];
    //响应到APP端
    [UIApplication sharedApplication].shortcutItems = @[item3,item2,item1];
}

#endif

@end
