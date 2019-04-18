//
//  Wing.m
//  HW_5_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 18/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//

#import "Wing.h"

@implementation Wing
- (instancetype) initWithNumber:(NSString *)number {
    self = [super init];
    if(self) {
        [number retain];
        [number release];
        _number = number;
        NSLog(@"Create Wing - %@", number);
    }
    return self;
}

- (void) dealloc {
    NSLog(@"Dealloc Wing - %@", _number);
    [_number release];
    [super dealloc];
}
@end
