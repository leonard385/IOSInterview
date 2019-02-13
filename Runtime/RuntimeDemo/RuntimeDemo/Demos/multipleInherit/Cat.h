//
//  Cat.h
//  RuntimeDemo
//
//  Created by niwanglong on 2019/1/24.
//  Copyright © 2019 倪望龙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@protocol CatProtocal <NSObject>
- (void)eatFish;
@end

@interface Cat : NSObject<CatProtocal>

@end

NS_ASSUME_NONNULL_END
