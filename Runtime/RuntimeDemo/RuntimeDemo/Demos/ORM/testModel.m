//
//  testModel.m
//  RuntimeDemo
//
//  Created by niwanglong on 2019/1/25.
//  Copyright © 2019 倪望龙. All rights reserved.
//

#import "testModel.h"
#import <objc/runtime.h>
@implementation testModel
+ (instancetype)objectWithDict:(NSDictionary *)dict{
    return [[testModel alloc] initWithDict:dict];
}

- (instancetype)initWithDict:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        unsigned int count = 0;
        objc_property_t *propertys = class_copyPropertyList([self class], &count);
        for (int i = 0; i < count; i++) {
            objc_property_t property = propertys[i];
            const char *name = property_getName(property);
            NSString *nameStr = [[NSString alloc] initWithUTF8String:name];
            id value = [dict objectForKey:nameStr];
            [self setValue:value forKey:nameStr];
         }
        free(propertys);
    }
    return self;
}

@end
