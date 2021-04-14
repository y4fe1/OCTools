//
//  AppDelegate.m
//  YFOCTool
//
//  Created by apple on 2020/10/26.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor redColor];
    [self.window makeKeyAndVisible];
    [self setTabbar];
    
    return YES;
}

- (void)setTabbar{
    
    UITabBarController *tabbarController = [UITabBarController new];
    
    NSArray *tabbarArr = @[@{@"title":@"First",@"normalImg":@"",@"selecedtImg":@""},@{@"title":@"Second",@"normalImg":@"",@"selecedtImg":@""},@{@"title":@"Third",@"normalImg":@"",@"selecedtImg":@""},@{@"title":@"Fourth",@"normalImg":@"",@"selecedtImg":@""},@{@"title":@"Fifth",@"normalImg":@"",@"selecedtImg":@""}];
    
    for (NSDictionary *dic in tabbarArr) {
        UIViewController *vc = [ViewController new];
        YFCustomNavController *nav = [[YFCustomNavController alloc] initWithRootViewController:vc];
        nav.tabBarItem.title = dic[@"title"];
        vc.title = dic[@"title"];
//        nav.navigationBar.backgroundColor = [UIColor blueColor];
        nav.tabBarItem.image = [UIImage imageNamed:dic[@"normalImg"]];
        nav.tabBarItem.selectedImage = [UIImage imageNamed:dic[@"selecedtImg"]];
//        tabbarController.selectedViewController = tabbarController.viewControllers.firstObject;
        [tabbarController addChildViewController:nav];
    }
    self.window.rootViewController = tabbarController;
}


#pragma mark - UISceneSession lifecycle




@end
