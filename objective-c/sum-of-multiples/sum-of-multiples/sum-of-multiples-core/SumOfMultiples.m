//
//  SumOfMultiples.m
//  sum-of-multiples-core
//
//  Created by Pietro Caselani on 12/05/19.
//  Copyright © 2019 PC. All rights reserved.
//

#import "SumOfMultiples.h"

@implementation NSArray (Join)

- (NSString *)join {
    NSMutableString *string = [[NSMutableString alloc] init];

    for (NSObject *o in self) {
        [string appendString:[o description]];
        [string appendString:@", "];
    }

    return [NSString stringWithString:string];
}

@end

@implementation SumOfMultiples

+ (NSNumber *)toLimit:(NSNumber *)limit inMultiples:(NSArray<NSNumber*>*)multiples {
    int interactions = 0;

    if ([limit isEqualToNumber:@1] || [limit isEqualToNumber:@0]) {
        NSLog(@">>> interactions = %d | limit = %@ multiples = %@", interactions, limit, [multiples join]);
        return @0;
    }

    NSMutableArray *alreadyMultiplied = [[NSMutableArray alloc] init];

    float total = 0;
    NSNumber *min = limit;

    for (NSNumber *multiple in multiples) {
        interactions += 1;
        if ([multiple isLessThan:min]) {
            min = multiple;
        }
    }

    for (NSInteger i = [min integerValue]; i < [limit integerValue]; i++) {
        for (NSNumber *multiple in multiples) {
            interactions += 1;
            if ([multiple isNotEqualTo:@0] && i % [multiple integerValue] == 0 && ![alreadyMultiplied containsObject:@(i)]) {
                [alreadyMultiplied addObject:@(i)];
                total += i;
            }

        }
    }

    NSLog(@">>> interactions = %d | limit = %@ multiples = %@", interactions, limit, [multiples join]);

    return @(total);
}

//+ (NSNumber *)toLimit:(NSNumber *)limit inMultiples:(NSArray<NSNumber*>*)multiples {
//    NSMutableArray *alreadyMultiplied = [[NSMutableArray alloc] init];
//
//    float total = 0;
//    int interactions = 0;
//
//    for (NSInteger i = 1; i < [limit integerValue]; i++) {
//        for (NSNumber *multiple in multiples) {
//            interactions += 1;
//            if ([multiple isNotEqualTo:@0] && i % [multiple integerValue] == 0 && ![alreadyMultiplied containsObject:@(i)]) {
//                [alreadyMultiplied addObject:@(i)];
//                total += i;
//            }
//        }
//    }
//
//    NSLog(@">>> interactions = %d | limit = %@ multiples = %@", interactions, limit, [multiples join]);
//
//    return @(total);
//}

@end
