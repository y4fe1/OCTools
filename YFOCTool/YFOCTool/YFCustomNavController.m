//
//  YFCustomNavController.m
//  YFOCTool
//
//  Created by apple on 2020/12/29.
//  Copyright © 2020 Feiyue. All rights reserved.
//

#import "YFCustomNavController.h"

@interface YFCustomNavController ()

@end

@implementation YFCustomNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.childViewControllers.count == 0) {
        viewController.hidesBottomBarWhenPushed = false;
    } else {
        viewController.hidesBottomBarWhenPushed = true;
    }
    [super pushViewController:viewController animated:animated];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
