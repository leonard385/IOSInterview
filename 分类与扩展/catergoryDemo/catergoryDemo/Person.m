//
//  Person.m
//  catergoryDemo
//
//  Created by niwanglong on 2018/12/20.
//  Copyright © 2018 倪望龙. All rights reserved.
//

#import "Person.h"

@interface Person(){
    //实例变量
    NSNumber * _age;
}
//类属性
@property(readwrite)NSString *name;//名字
@property(readwrite) NSString *uniqueIdentifier;
- (void)sayHello;
@end
@implementation Person
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self dataInit];
    }
    return self;
}

- (void)dataInit{
    _age = @(20);
    _name = @"leo";
}

- (void)sayHello{
    NSLog(@"Hello I'm Leo");
}

- (void)detailInfo{
    NSLog(@"age:%ld , name:%@",(long)_age.integerValue,_name);
}

- (void)assignUniqueIdentifier:(NSString *)identifer{
    self.uniqueIdentifier = identifer;
}

- (void)assignName:(NSString *)name{
    self.name = name;
}

@end
