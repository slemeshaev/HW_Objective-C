//
//  Flock.h
//  HW_5_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 18/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bird.h"

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject
- (void) configWithBirds: (NSArray *) birds;
@property (nonatomic, strong) NSArray *birds;
@end

NS_ASSUME_NONNULL_END
