//
//  ViewController.m
//  JsonModelDemo
//
//  Created by dev-aozhimin on 15/9/1.
//  Copyright (c) 2015年 dev-aozhimin. All rights reserved.
//

#import "ViewController.h"
#import "Department.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Department *department = [Department new];
    
    Person *a1 = [Person new];
    a1.firstName = @"a1";
    a1.lastName = @"a";
    a1.age = @25;
    Person *a2 = [Person new];
    a2.firstName = @"a2";
    a2.lastName = @"a";
    a2.age = @25;
    department.accounting = [@[a1,a2] mutableCopy];
    
    Person *s1 = [Person new];
    s1.firstName = @"s1";
    s1.lastName = @"s";
    s1.age = @24;
    Person *s2 = [Person new];
    s2.firstName = @"s2";
    s2.lastName = @"s";
    s2.age = @21;
    department.sales = [@[s1,s2] mutableCopy];
    
    NSString *strJson = [department toJSONString];
    
    JSONModelError *err;
    Department *retdepartment = [[Department alloc] initWithString:strJson error:&err];
    if (!err)
    {
        for (Person *person in retdepartment.accounting) {
            
            NSLog(@"%@", person.firstName);
            NSLog(@"%@", person.lastName);
            NSLog(@"%@", person.age);
        }
        
        for (Person *person in retdepartment.sales) {
            
            NSLog(@"%@", person.firstName);
            NSLog(@"%@", person.lastName);
            NSLog(@"%@", person.age);
        }
    }

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
