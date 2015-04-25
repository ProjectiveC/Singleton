//
//  ViewController.m
//  Singleton
//
//  Projective-C
//

#import "ViewController.h"
#import "Singleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Singleton *manager = [Singleton singletonManager];
    [manager initialisePatternString:@"db"];
    
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(printPattern) userInfo:nil repeats:YES];
}

-(void)printPattern{
    Singleton *manager = [Singleton singletonManager];
    [manager printDoublingSequence];
    //Result for pattern string 'db' should be dbdb, dbdbdbdb, dbdbdbdbdbdbdbdb, ...
}

@end
