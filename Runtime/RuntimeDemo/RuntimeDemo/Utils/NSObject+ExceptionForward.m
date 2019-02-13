//
//  NSObject+ExceptionForward.m
//  RuntimeDemo
//
//  Created by niwanglong on 2019/1/18.
//  Copyright © 2019 倪望龙. All rights reserved.
//

#import "NSObject+ExceptionForward.h"
#import <objc/runtime.h>
#import "JDCrashProtectHandler.h"
@implementation NSObject (ExceptionForward)

void dynamicResolveMethod(id self, SEL _cmd) {
   NSLog(@"InstanceMethod被调用...%@",NSStringFromSelector(_cmd));
}

void dynamicResolveClassMethod(id self, SEL _cmd) {
    NSLog(@"ClassMethod被调用...%@",NSStringFromSelector(_cmd));
}
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

//+ (BOOL)resolveInstanceMethod:(SEL)sel{
//    NSString *methodName = NSStringFromSelector(sel);
//    if ([methodName isEqualToString:@"testInstanceMethod"]) {
//        class_addMethod([self class], sel, (IMP)dynamicResolveMethod, "v@:");
//    }
//    return YES;
//}
//
//+ (BOOL)resolveClassMethod:(SEL)sel{
//    NSString *methodName = NSStringFromSelector(sel);
//    if ([methodName isEqualToString:@"testClassMethod"]) {
//        const char *className = object_getClassName(self);
//        Class metaClass = objc_getMetaClass(className);
//        class_addMethod(metaClass,sel, (IMP)dynamicResolveClassMethod, "v@:");
//    }
//    return YES;
//}

- (id)forwardingTargetForSelector:(SEL)aSelector{
    NSString *methodName = NSStringFromSelector(aSelector);
    if ([NSStringFromClass([self class]) hasPrefix:@"_"] || [self isKindOfClass:NSClassFromString(@"UITextInputController")] || [NSStringFromClass([self class]) hasPrefix:@"UIKeyboard"] || [methodName isEqualToString:@"dealloc"]) {
        return nil;
    }
    JDCrashProtectHandler *protectHandler = [JDCrashProtectHandler new];
    protectHandler.className = NSStringFromClass([self class]);
    protectHandler.classAddr = [NSString stringWithFormat:@"%p",self];
    protectHandler.unrecognizedSelector = NSStringFromSelector(aSelector);
    class_addMethod([JDCrashProtectHandler class], aSelector, [protectHandler methodForSelector:@selector(JDCrashProtectCollectCrashMessages)], "v@:");
    return protectHandler;
}
#pragma clang diagnostic pop


@end

