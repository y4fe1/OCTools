//
//  YFDeviceInfo.m
//  YFOCTool
//
//  Created by apple on 2020/11/17.
//  Copyright © 2020 Feiyue. All rights reserved.
//

#import "YFDeviceInfo.h"
#import "YFTools.h"

@interface YFDeviceInfo ()<NSCopying,NSMutableCopying>
@property(nonatomic, assign)BOOL isBangDevice;
@property(nonatomic, copy)NSString *deviceModelName;
@end

@implementation YFDeviceInfo

static YFDeviceInfo *deviceInfo = nil;

+(instancetype)shareDeviceInfo{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        deviceInfo = [[YFDeviceInfo alloc] init];
        [deviceInfo setPropertys];
    });
    
    return deviceInfo;
    
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        deviceInfo = [super allocWithZone:zone];
        [deviceInfo setPropertys];
    });
    return deviceInfo;
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return self;
}

- (nonnull id)mutableCopyWithZone:(nullable NSZone *)zone {
    return self;
}


- (void)setPropertys{
    deviceInfo.isBangDevice = [YFTools isBangDevice];
    deviceInfo.screenSize = [UIScreen mainScreen].bounds.size;
}

- (NSInteger)screenWidth{
    if (_screenWidth == 0) {
        _screenWidth = self.screenSize.width;
    }
    return _screenWidth;
}

- (NSInteger)screenHeight{
    if (_screenHeight == 0) {
        _screenHeight = self.screenSize.height;
    }
    return _screenHeight;
}

- (NSInteger)navBarAndStatusHeight{
    if (_navBarAndStatusHeight == 0) {
        _navBarAndStatusHeight = self.isBangDevice ? 88 : 64;
    }
    return _navBarAndStatusHeight;
}

- (NSInteger)navBarHeight{
    if (_navBarHeight == 0) {
        _navBarHeight = 44;
    }
    return _navBarHeight;
}

- (NSInteger)statusBarHeight{
    if (_statusBarHeight == 0) {
        _statusBarHeight = self.isBangDevice ? 44 : 20;
    }
    return _statusBarHeight;
}

- (NSInteger)saveAreaHeight{
    if (_saveAreaHeight == 0) {
        _saveAreaHeight = self.isBangDevice ? 34 : 0;
    }
    return _saveAreaHeight;
}

- (NSInteger)tabBarHeight{
    if (_tabBarHeight == 0) {
        _tabBarHeight = self.saveAreaHeight + 49;
    }
    return _tabBarHeight;
}


@end


