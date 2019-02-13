//
//  Dog.h
//  RuntimeDemo
//
//  Created by niwanglong on 2019/1/24.
//  Copyright © 2019 倪望龙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@protocol DogProtocal <NSObject>
- (void)eatBone;
@end
@interface Dog : NSObject<DogProtocal>

@end

NS_ASSUME_NONNULL_END
