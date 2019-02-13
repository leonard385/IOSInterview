//
//  ViewController.m
//  RuntimeDemo
//
//  Created by niwanglong on 2019/1/18.
//  Copyright © 2019 倪望龙. All rights reserved.
//

#import "ViewController.h"
#import "testObject.h"
#import <objc/runtime.h>
#import "Cat.h"
#import "Dog.h"
#import "testModel.h"
#import "TestInterViewObject.h"
#import "NSObject+Sark.h"
#import "Sark.h"
@interface ViewController ()
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self testUnrecognizedMethods];
    [self testMultipleInherit];
    [self testORM];
    [self testInterViewDemo];
}

- (void)testUnrecognizedMethods{
    testObject *obj = [testObject new];
// 1. resolveInstanceMethod 与 resolveClassMethod 消息动态解析测试
//    [testObject testClassMethod];
//    [obj testInstanceMethod];

// 2.消息转发测试
    [obj testInstanceMethodB];
//    [testObject testClassMethodB];
}

/**
测试多重继承
 **/
- (void)testMultipleInherit{
    testObject *obj = [testObject new];
    BOOL isKindClass = [obj isKindOfClass:[Cat class]];
    NSLog(@"testObject isCatClass %d",isKindClass);
    isKindClass = [obj isKindOfClass:[Dog class]];
    NSLog(@"testObject isDogClass %d",isKindClass);
    
    BOOL hasMethod = [obj respondsToSelector:@selector(eatFish)];
    NSLog(@"testObject hasEatFishMethod %d",hasMethod);
    hasMethod = [obj respondsToSelector:@selector(eatBone)];
    NSLog(@"testObject hasEatBoneMethod %d",hasMethod);
    
    [obj eatFish];
    [obj eatBone];
}

- (void)testORM{
    NSDictionary *dict = @{@"name" : @"lxz",
                           @"age" : @18,
                           @"gender" : @YES};
    testModel *object = [testModel objectWithDict:dict];
    NSLog(@"%@",object);
}

- (void)testInterViewDemo{
    TestInterViewObject *obj = [TestInterViewObject new];
    BOOL res1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];
    BOOL res2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];
    BOOL res3 = [(id)[TestInterViewObject class] isKindOfClass:[TestInterViewObject class]];
    BOOL res4 = [(id)[TestInterViewObject class] isMemberOfClass:[TestInterViewObject class]];
    NSLog(@"res1 = %d, res2 = %d, res3 = %d, res4 = %d",res1,res2,res3,res4);
    obj = nil;
    
    [NSObject foo];
    [[NSObject new]performSelector:@selector(foo)];
    
    id cls = [Sark class];
    void *objTmp = &cls;
    [(__bridge id)objTmp speak];
}

@end
