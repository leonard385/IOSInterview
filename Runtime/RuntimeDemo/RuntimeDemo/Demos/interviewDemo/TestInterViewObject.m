//
//  TestInterViewObject.m
//  RuntimeDemo
//
//  Created by niwanglong on 2019/1/25.
//  Copyright © 2019 倪望龙. All rights reserved.
//

#import "TestInterViewObject.h"

@implementation TestInterViewObject
- (instancetype)init{
    self = [super init];
    if (self) {
        NSLog(@"%@", NSStringFromClass([self class]));
        NSLog(@"%@", NSStringFromClass([super class]));
    }
    return self;
}
@end
