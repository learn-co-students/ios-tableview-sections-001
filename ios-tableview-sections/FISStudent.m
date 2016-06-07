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
    self = [self initWithName:@""
                 favoriteFood:@""
                favoriteColor:@""
        favoriteMusicalArtist:@""
                 favoriteGame:@""];
    return self;
}

-(instancetype)initWithName:(NSString *)name
               favoriteFood:(NSString *)favoriteFood
              favoriteColor:(NSString *)favoriteColor
      favoriteMusicalArtist:(NSString *)favoriteMusicalArtist
               favoriteGame:(NSString *)favoriteGame; {
    self = [super init];
    if (self) {
        _name = name;
        _favoriteFood = favoriteFood;
        _favoriteColor = favoriteColor;
        _favoriteMusicalArtist = favoriteMusicalArtist;
        _favoriteGame =favoriteGame;
        self.favoriteThings = [NSArray arrayWithObjects:favoriteFood, favoriteColor, favoriteMusicalArtist, favoriteGame, nil];
    }
    return self;
}

@end
