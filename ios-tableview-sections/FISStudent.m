//
//  FISStudent.m
//  ios-tableview-sections
//
//  Created by John Richardson on 6/7/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISStudent.h"

@implementation FISStudent

-(instancetype)init {
    self = [self initWithName:@""];
    return self;
}

-(instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

@end
