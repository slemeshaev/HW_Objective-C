//
//  main.m
//  HW_1_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 03/03/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1. Создать программу, которая будет пременять к введенным числам различные арифметические операции (на основе практической задачи 3).
        double firstNumber = 0;
        double secondNumber = 0;
        NSLog(@"\nFirst number: ");
        scanf("%lf", &firstNumber);
        NSLog(@"\nSecond number: ");
        scanf("%lf", &secondNumber);
        NSLog(@"\nSum result = %f", firstNumber + secondNumber);
        NSLog(@"\nDiff result = %f", firstNumber - secondNumber);
        NSLog(@"\nMult result = %f", firstNumber * secondNumber);
        NSLog(@"\nDiv result = %f", firstNumber / secondNumber);
        
        // 2. Улучшить программу: организовать вывод результата и переменных в консоль одной строкой (как в практической задаче 2).
        NSLog(@"\nSum result = %f, Diff result = %f, Mult result = %f, Div result = %f", firstNumber + secondNumber, firstNumber - secondNumber, firstNumber * secondNumber, firstNumber / secondNumber);
        
    }
    return 0;
}
