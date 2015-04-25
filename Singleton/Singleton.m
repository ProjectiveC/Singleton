//
//  Singleton.m
//  Singleton
//
//  Projective-C
//

#import "Singleton.h"

Singleton *sharedMyManager = nil;

@implementation Singleton

@synthesize stringPattern;

+ (Singleton *) singletonManager{
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
    dispatch_async(queue, ^{
        sharedMyManager = [[Singleton alloc] init];
    });
    return sharedMyManager;
}

- (void)initialisePatternString:(NSString *)pattern{
    stringPattern = pattern;
}

-(void)printDoublingSequence{
    stringPattern = [stringPattern stringByAppendingString:stringPattern];
    NSLog(@"%@", stringPattern);
}


@end
