//
//  YFDeviceInfo.h
//  YFOCTool
//
//  Created by apple on 2020/11/17.
//  Copyright © 2020 Feiyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YFDeviceInfo : NSObject
+(instancetype)shareDeviceInfo;

@property(nonatomic, assign)CGSize screenSize;
@property(nonatomic, assign)NSInteger screenWidth;
@property(nonatomic, assign)NSInteger screenHeight;

@property(nonatomic, assign)NSInteger navBarAndStatusHeight;
@property(nonatomic, assign)NSInteger navBarHeight;
@property(nonatomic, assign)NSInteger statusBarHeight;
@property(nonatomic, assign)NSInteger saveAreaHeight;
@property(nonatomic, assign)NSInteger tabBarHeight;

@end

NS_ASSUME_NONNULL_END
