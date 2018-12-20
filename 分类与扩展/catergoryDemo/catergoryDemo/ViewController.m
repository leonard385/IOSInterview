//
//  ViewController.m
//  catergoryDemo
//
//  Created by niwanglong on 2018/12/20.
//  Copyright © 2018 倪望龙. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Person+skills.h"
#import "PersonPrivate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self runExample];
}

- (void)runExample{
    Person *person = [Person new];
    [person detailInfo];
    [person readEnglish];
    [person assignUniqueIdentifier:@"4583321"];
    NSString *identifier = person.uniqueIdentifier;
    NSLog(@"identifier = %@",identifier);
    [person assignName:@"amy"];
    NSString *name = person.name;
    NSLog(@"name = %@",name);
}


@end
