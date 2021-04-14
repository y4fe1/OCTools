//
//  ViewController.m
//  YFOCTool
//
//  Created by apple on 2020/10/26.
//

#import "ViewController.h"
#import <UIImageView+WebCache.h>
#import "YFDeviceInfo.h"
#import <TXBeautyManager.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    ViewController *vc = [ViewController new];
    [self.navigationController pushViewController:vc animated:true];
    UIStackView *sView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    [iv sd_setImageWithURL:[NSURL URLWithString:@"https://app.syjp365.com/Images/Product/Advertisement/096a493148244131b64c1174eafb625a.gif"]];//@"http://app.syjp365.com/Images/Product/Advertisement/096a493148244131b64c1174eafb625a.gif"    @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1604291062099&di=9a2b36fc380ec33bbcc46c8e9fa286ce&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201611%2F04%2F20161104110413_XzVAk.gif"
    [self.view addSubview:iv];
    
    NSArray *aaa = @[@"2",@"3"];
    NSLog(@"ddddddd%d",[aaa containsObject:@"2"]);
    
    YFDeviceInfo *ids = [YFDeviceInfo new];
    YFDeviceInfo *ids3 = [ids copy];
    
    NSArray *arr = @[@"2",@"5",@"4",@"3",@"1",];
    arr = [arr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        
        if ([obj1 integerValue] > [obj2 integerValue]) {
            return NSOrderedDescending;
        } else if ([obj1 integerValue] == [obj2 integerValue]) {
            return NSOrderedSame;
        }else{
            return NSOrderedAscending;
        }
        
    }];
    NSLog(@"");
    
    NSLog(@"%@",arr);
    
    
//    [arr sortedArrayUsingSelector:<#(nonnull SEL)#>];
}


@end
