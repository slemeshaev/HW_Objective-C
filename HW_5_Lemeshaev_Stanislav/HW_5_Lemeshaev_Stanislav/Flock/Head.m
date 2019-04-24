//
//  Head.m
//  HW_5_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 18/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//

#import "Head.h"

@implementation Head
- (instancetype) initWithName:(NSString *)name {
    self = [super init];
    if(self) {
        [name retain];
        [name release];
        _name = name;
        NSLog(@"Head - %@", name);
    }
    return self;
}

- (void) dealloc {
    NSLog(@"Dealloc Head - %@", _name);
    [_name release];
    [super dealloc];
}
@end
