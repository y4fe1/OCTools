//
//  YFLogic.h
//  YFOCTool
//
//  Created by apple on 2021/4/14.
//  Copyright © 2021 Feiyue. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YFLogic : NSObject
+ (NSString *)convertToJsonData:(id)dict;
+ (id)dictionaryWithJsonString:(NSString *)jsonString;
@end

NS_ASSUME_NONNULL_END
