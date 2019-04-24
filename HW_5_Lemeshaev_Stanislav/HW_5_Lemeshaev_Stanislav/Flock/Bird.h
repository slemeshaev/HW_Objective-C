//
//  Bird.h
//  HW_5_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 18/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wing.h"
#import "Head.h"

NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject
- (void) configWithHead: (Head *)head andWings: (NSArray *) wings;

@property (nonatomic, strong) Head *head;
@property (nonatomic, strong) NSArray *wings;
@end

NS_ASSUME_NONNULL_END
