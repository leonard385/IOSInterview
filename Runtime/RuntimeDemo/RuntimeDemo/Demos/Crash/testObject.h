//
//  testObject.h
//  RuntimeDemo
//
//  Created by niwanglong on 2019/1/22.
//  Copyright © 2019 倪望龙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "Dog.h"

NS_ASSUME_NONNULL_BEGIN
@interface testObject : NSObject<CatProtocal,DogProtocal>
- (void)testInstanceMethod;
+ (void)testClassMethod;

- (void)testInstanceMethodB;
+ (void)testClassMethodB;
@end

NS_ASSUME_NONNULL_END
