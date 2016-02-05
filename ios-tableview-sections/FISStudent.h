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
- (instancetype)init;
- (instancetype)initWithName:(NSString *)name favoriteThings:(NSArray *)favoriteThings;
@end
