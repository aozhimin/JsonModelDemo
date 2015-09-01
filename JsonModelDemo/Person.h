//
//  Person.h
//  JSONModelDemo_iOS
//
//  Created by dev-aozhimin on 15/9/1.
//  Copyright (c) 2015年 Underplot ltd. All rights reserved.
//

#import "JSONModel.h"

@interface Person : JSONModel
@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSNumber *age;
@end
