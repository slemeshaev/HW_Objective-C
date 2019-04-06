//
//  main.m
//  HW_3_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 04/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//
// 1. Создать массив строк и вывести его в консоль используя цикл.
//
// 2. Улучшить калькулятор с помощью перечислений, чтобы все возможные методы (сложение, вычитание, деление, умножение) передавались в виде состояния.
//
// 3. Создать структуру Human. Со свойствами “Name” (NSString), “Age”(NSInterger), “Gender”(NS_Enum). Создать несколько экземпляров структуры и вывести их в консоль.


#import <Foundation/Foundation.h>

enum Operation {
    Addition = '+',
    Subtraction = '-',
    Multiplication = '*',
    Division = '/'
};

typedef enum Operation Operation;

int addition(int a, int b) {
    return a + b;
}

int subtraction(int a, int b) {
    return a - b;
}

int multiplication(int a, int b) {
    return a * b;
}

double division(double a, double b) {
    return a / b;
}

void Calculate(Operation sign, double firstNumber, double secondNumber) {
    switch (sign) {
        case Addition:
            NSLog(@"\nSum result = %i", addition(firstNumber, secondNumber));
            break;
        case Subtraction:
            NSLog(@"\nDiff result = %i", subtraction(firstNumber, secondNumber));
            break;
        case Multiplication:
            NSLog(@"\nMult result = %i", multiplication(firstNumber, secondNumber));
            break;
        case Division:
            NSLog(@"\nDiv result = %f", division(firstNumber, secondNumber));
            break;
        default:
            NSLog(@"Функция не знает переданный метод");
            break;
    }
}

int main() {
    @autoreleasepool {
        // 1. Создать массив строк и вывести его в консоль используя цикл.
        NSMutableArray *mutableArrayString = [NSMutableArray arrayWithObjects:@"Hello", @"world", @"Stanislav", @"Lemeshaev", nil];
        // Распечатка элементов массива
        for (int i = 0; i < mutableArrayString.count; i++) {
            NSLog(@"Elements: \n %d - %@", i, mutableArrayString[i]);
        }
        
        // 2. Улучшить калькулятор с помощью перечислений, чтобы все возможные методы (сложение, вычитание, деление, умножение) передавались в виде состояния.
        NSLog(@"\nEnter a operation sign: ");
        char zn;
        scanf("%s", &zn);
        
        NSLog(@"\nEnter a first number: ");
        double firstNumber;
        scanf("%lf", &firstNumber);
        
        NSLog(@"\nEnter a second number: ");
        double secondNumber;
        scanf("%lf", &secondNumber);
        
        Calculate(zn, firstNumber, secondNumber);

    }
    return 0;
}
