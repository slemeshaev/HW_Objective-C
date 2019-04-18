//
//  Flock.m
//  HW_5_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 18/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//

#import "Flock.h"

@implementation Flock
- (instancetype) init {
    self = [super init];
    if(self) {
        NSLog(@"Create Flock");
    }
    return self;
}

- (void)configWithBirds:(NSArray *)birds {
    
    [birds retain];
    _birds = birds;
    [birds release];
    
    for(Bird *bird in birds) {
        NSLog(@"Add bird %@", bird.head.name);
    }
}

-(void) remove {
    NSLog(@"Remove birds from flock");
    for(Bird *bird in _birds) {
        [bird release];
    }
    [_birds release];
}

- (void) dealloc {
    [self remove];
    NSLog(@"Dealloc flock");
    [super dealloc];
}

@end
