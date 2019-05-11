//
//  TwoFer.m
//  TwoFer
//
//  Created by Pietro Caselani on 11/05/19.
//  Copyright © 2019 PC. All rights reserved.
//

#import "TwoFer.h"

@implementation TwoFer

+ (NSString *)twoFerWithName:(NSString *)name {
    NSString *input = name ?: @"you";
    return [NSString stringWithFormat:@"One for %@, one for me.", input];
}

@end
