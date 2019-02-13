//
//  testModel.h
//  RuntimeDemo
//
//  Created by niwanglong on 2019/1/25.
//  Copyright © 2019 倪望龙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface testModel : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) NSInteger age;
@property (nonatomic,assign) BOOL gender;

+ (instancetype)objectWithDict:(NSDictionary *)dict;
@end

NS_ASSUME_NONNULL_END
