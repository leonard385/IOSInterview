//
//  JDCrashProtectHandler.m
//  RuntimeDemo
//
//  Created by niwanglong on 2019/1/23.
//  Copyright © 2019 倪望龙. All rights reserved.
//

#import "JDCrashProtectHandler.h"

@implementation JDCrashProtectHandler
- (void)JDCrashProtectCollectCrashMessages{
   NSLog(@"JDCrashProtect: [%@ %p %@]: unrecognized selector sent to instance",_className,_classAddr,_unrecognizedSelector);
}
@end
