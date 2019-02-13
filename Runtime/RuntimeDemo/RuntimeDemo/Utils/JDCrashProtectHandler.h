//
//  JDCrashProtectHandler.h
//  RuntimeDemo
//
//  Created by niwanglong on 2019/1/23.
//  Copyright © 2019 倪望龙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JDCrashProtectHandler : NSObject
@property (nonatomic,copy) NSString *className;
@property (nonatomic,copy) NSString *classAddr;
@property (nonatomic,copy) NSString *unrecognizedSelector;
@end
NS_ASSUME_NONNULL_END
