//
//  FISStudent.m
//  ios-tableview-sections
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISStudent.h"

@implementation FISStudent

- (instancetype)init
{
    self = [self initWithName:@"" favoriteThings:@[]];
    return self;
}

- (instancetype)initWithName:(NSString *)name favoriteThings:(NSArray *)favoriteThings
{
    self = [super init];
    if (self)
    {
        _name = name;
        _favoriteThings = favoriteThings;
    }
    return self;
}

@end
