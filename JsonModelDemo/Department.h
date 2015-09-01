//
//  Department.h
//  JSONModelDemo_iOS
//
//  Created by dev-aozhimin on 15/9/1.
//  Copyright (c) 2015年 Underplot ltd. All rights reserved.
//

#import "JSONModel.h"

@protocol Person;

@interface Department : JSONModel

@property (nonatomic, strong) NSMutableArray<Person> *accounting;
@property (nonatomic, strong) NSMutableArray<Person> *sales;
@end
