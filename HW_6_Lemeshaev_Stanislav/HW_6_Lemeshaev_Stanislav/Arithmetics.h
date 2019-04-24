//
//  Arithmetics.h
//  HW_6_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 24/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef int (^ArithmeticalBlock) (int a, int b);

typedef enum ActionBlock {
    ActionBlockSum = 1,
    ActionBlockSubstract = 2,
    ActionBlockMultiply = 3,
    ActionBlockDivide = 4,
    ActionBlockModulo = 5,
    ActionBlockSumSquares = 6
} ActionBlock;

@interface Arithmetics : NSObject

+ (int)beginWithAction: (ActionBlock) action firstNumber: (int)firstNumber secondNumber: (int)secondNumber;

@end


NS_ASSUME_NONNULL_END
