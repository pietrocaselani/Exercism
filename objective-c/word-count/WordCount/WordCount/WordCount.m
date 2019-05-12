//
//  WordCount.m
//  WordCount
//
//  Created by Pietro Caselani on 12/05/19.
//  Copyright © 2019 PC. All rights reserved.
//

#import "WordCount.h"

@implementation WordCount

- (instancetype)initWithString:(NSString *)string {
    if (self = [super init]) {
        _count = [self countWordsIn:string];
    }
    return self;
}

- (NSDictionary<NSString *, NSNumber *> *)countWordsIn:(NSString *)string {
    NSCharacterSet *set = [[NSCharacterSet alphanumericCharacterSet] invertedSet];

    NSArray<NSString *> *words = [[string lowercaseString] componentsSeparatedByCharactersInSet:set];

    NSMutableDictionary<NSString *, NSNumber *> *wordsCount = [NSMutableDictionary dictionary];

    for (NSString *word in words) {
        if (word.length == 0) continue;

        wordsCount[word] = @([wordsCount[word] integerValue] + 1);
    }

    return [NSDictionary dictionaryWithDictionary:wordsCount];
}

@end
