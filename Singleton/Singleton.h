//
//  Singleton.h
//  Singleton
//
//  Projective-C
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject
{
    NSString *stringPattern;
}

@property (nonatomic, retain) NSString *stringPattern;

+ (id)singletonManager;

- (void)initialisePatternString:(NSString *)pattern;

- (void)printDoublingSequence;

@end