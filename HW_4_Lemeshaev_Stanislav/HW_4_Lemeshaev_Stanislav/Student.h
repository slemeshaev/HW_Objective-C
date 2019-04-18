//
//  Student.h
//  HW_4_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 10/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic,strong) NSString *surname;
@property (nonatomic,strong) NSString *fullName;
@property (nonatomic, assign, readonly) NSInteger age;

- (NSString *)fullName;

- (void)setInfoName:(NSString *)name
            surname:(NSString *)surname
                age:(NSInteger)age;

- (void)increaseAge;
@end

NS_ASSUME_NONNULL_END
