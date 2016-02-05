//
//  FISStudent.h
//  ios-tableview-sections
//
//  Created by Ken M. Haggerty on 2/5/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISStudent : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSArray *favoriteThings;
@property (nonatomic, strong) NSString *favoriteFood;
@property (nonatomic, strong) NSString *favoriteColor;
@property (nonatomic, strong) NSString *favoriteMusicalArtist;
@property (nonatomic, strong) NSString *favoriteGame;
- (instancetype)initWithName:(NSString *)name favoriteThings:(NSArray *)favoriteThings;
- (instancetype)initWithName:(NSString *)name favoriteFood:(NSString *)favoriteFood color:(NSString *)favoriteColor musicalArtist:(NSString *)favoriteArtist game:(NSString *)favoriteGame;
@end
