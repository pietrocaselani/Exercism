//
//  SumOfMultiples.h
//  sum-of-multiples-core
//
//  Created by Pietro Caselani on 12/05/19.
//  Copyright © 2019 PC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SumOfMultiples : NSObject

+ (NSNumber *)toLimit:(NSNumber *)limit inMultiples:(NSArray<NSNumber*>*)multiples;

@end

NS_ASSUME_NONNULL_END
