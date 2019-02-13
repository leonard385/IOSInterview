//
//  testObject.m
//  RuntimeDemo
//
//  Created by niwanglong on 2019/1/22.
//  Copyright © 2019 倪望龙. All rights reserved.
//

#import "testObject.h"

@interface testObject()
@property (nonatomic,strong)Cat *cat;
@property (nonatomic,strong)Dog *dog;
@end
@implementation testObject

- (Cat *)cat{
    if(_cat == nil){
        _cat = [Cat new];
    }
    return _cat;
}

- (Dog *)dog{
    if (_dog == nil){
        _dog = [Dog new];
    }
    return _dog;
}

- (BOOL)isKindOfClass:(Class)aClass{
    NSString *className = NSStringFromClass(aClass);
    if([className isEqualToString:@"Cat"] || [className isEqualToString:@"Dog"] ){
        return YES;
    }
    return [super isKindOfClass:aClass];
}

- (BOOL)respondsToSelector:(SEL)aSelector{
    NSString *methodName = NSStringFromSelector(aSelector);
    if([methodName isEqualToString:@"eatFish"] || [methodName isEqualToString:@"eatBone"] ){
        return YES;
    }
    return [super respondsToSelector:aSelector];
}

- (id)forwardingTargetForSelector:(SEL)aSelector{
    if([self.cat respondsToSelector:aSelector]){
        return self.cat;
    } else if([self.dog respondsToSelector:aSelector]){
        return self.dog;
    } else {
        return [super forwardingTargetForSelector:aSelector];
    }
}

@end
