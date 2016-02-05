//
//  FISStudent.m
//  ios-tableview-sections
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISStudent.h"

@implementation FISStudent

- (instancetype)initWithName:(NSString *)name favoriteThings:(NSArray *)favoriteThings
{
    self = [self init];
    if (self)
    {
        _name = name;
        _favoriteThings = favoriteThings;
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name favoriteFood:(NSString *)favoriteFood color:(NSString *)favoriteColor musicalArtist:(NSString *)favoriteArtist game:(NSString *)favoriteGame
{
    self = [super init];
    if (self)
    {
        _name = name;
        _favoriteFood = favoriteFood;
        _favoriteColor = favoriteColor;
        _favoriteMusicalArtist = favoriteArtist;
        _favoriteGame = favoriteGame;
    }
    return self;
}

@end
