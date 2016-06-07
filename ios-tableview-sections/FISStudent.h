//
//  FISStudent.h
//  ios-tableview-sections
//
//  Created by John Richardson on 6/7/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISStudent : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *favoriteFood;
@property (nonatomic) NSString *favoriteColor;
@property (nonatomic) NSString *favoriteMusicalArtist;
@property (nonatomic) NSString *favoriteGame;
@property (nonatomic) NSArray *favoriteThings;

-(instancetype)init;

-(instancetype)initWithName:(NSString *)name
               favoriteFood:(NSString *)favoriteFood
              favoriteColor:(NSString *)favoriteColor
      favoriteMusicalArtist:(NSString *)favoriteMusicalArtist
               favoriteGame:(NSString *)favoriteGame;

@end
