//
//  Wing.h
//  HW_5_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 18/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Wing : NSObject
- (instancetype) initWithNumber:(NSString *) number;
@property (nonatomic, strong) NSString *number;
@end

NS_ASSUME_NONNULL_END
