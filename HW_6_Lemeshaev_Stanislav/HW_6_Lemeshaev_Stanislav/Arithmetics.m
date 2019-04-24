//
//  Arithmetics.m
//  HW_6_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 24/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//

#import "Arithmetics.h"

@implementation Arithmetics

ArithmeticalBlock sum = ^(int a, int b) {
    return a + b;
};

ArithmeticalBlock substract = ^(int a, int b) {
    return a - b;
};

ArithmeticalBlock multiply = ^(int a, int b) {
    return a * b;
};

ArithmeticalBlock divide = ^(int a, int b) {
    if (b != 0) {
        return a / b;
    }
    return 0;
};

ArithmeticalBlock modulo = ^(int a, int b) {
    if (b != 0) {
        return a % b;
    }
    return 0;
};

ArithmeticalBlock sumSquares = ^(int a, int b) {
    return a * a + b * b;
};


+ (int)beginWithAction: (ActionBlock) action firstNumber: (int)firstNumber secondNumber: (int)secondNumber
{
    switch (action) {
        case 1:
            return sum(firstNumber, secondNumber);
            break;
        case 2:
            return substract(firstNumber, secondNumber);
            break;
        case 3:
            return multiply(firstNumber, secondNumber);
            break;
        case 4:
            return divide(firstNumber, secondNumber);
            break;
        case 5:
            return modulo(firstNumber, secondNumber);
            break;
        case 6:
            return sumSquares(firstNumber, secondNumber);
            break;
        default:
            NSLog(@"Action is invalid or not supported");
            return 0;
            break;
    }
};

@end
