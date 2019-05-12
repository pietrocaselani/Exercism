//
//  WordCount.h
//  WordCount
//
//  Created by Pietro Caselani on 12/05/19.
//  Copyright © 2019 PC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WordCount : NSObject

- (instancetype)initWithString:(NSString *)string;

@property (nonatomic, readonly) NSDictionary<NSString *, NSNumber *> *count;

@end

NS_ASSUME_NONNULL_END
