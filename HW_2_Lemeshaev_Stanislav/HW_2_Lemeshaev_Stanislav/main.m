//
//  main.m
//  HW_2_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 30/03/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//
//  1. Создать функцию, которая будет проверять, входит ли переданная буква в английский алфавит.
//  2. Разделить метод Calculate (из практической задачи) на несколько методов (отдельно сложение, вычитание, умножение и деление).

#import <Foundation/Foundation.h>

// 1. Функция, которая проверяет, входит ли переданная буква в английский алфавит.
BOOL isLetterEnglishABC(char c) {
    if (((c >= 'a') && (c <= 'z')) || ((c >= 'A') && (c <= 'Z'))) {
        return true;
    }
    else
        return false;
}

// Главная программа
int main() {
    @autoreleasepool {
        printf("Enter your symbol: ");
        char sym;
        scanf("%s", &sym);
        NSLog(@"%d", isLetterEnglishABC(sym));
    }
    return 0;
}
