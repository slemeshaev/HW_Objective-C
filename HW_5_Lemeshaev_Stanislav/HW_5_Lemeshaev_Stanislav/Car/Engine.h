//
//  Engine.h
//  HW_5_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 18/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Engine : NSObject
- (instancetype) initWithModel: (NSString *) model;
@property (nonatomic, strong) NSString *model;
@end

NS_ASSUME_NONNULL_END
