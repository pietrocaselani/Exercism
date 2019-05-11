#import "HelloWorld.h"

@implementation HelloWorld

- (NSString *)hello:(NSString *)input {
    if (input == nil) {
        return @"Hello, World!";
    }

    return [NSString stringWithFormat:@"Hello, %@!", input];
}

@end
