//
//  Person.h
//  catergoryDemo
//
//  Created by niwanglong on 2018/12/20.
//  Copyright © 2018 倪望龙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic,readonly)NSString *uniqueIdentifier;
@property(nonatomic,readonly)NSString *name;

- (void)assignUniqueIdentifier:(NSString *)identifer;
- (void)detailInfo;
@end

NS_ASSUME_NONNULL_END
