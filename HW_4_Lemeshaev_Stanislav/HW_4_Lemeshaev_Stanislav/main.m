//
//  main.m
//  HW_4_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 10/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//
//  1. Создать программу, которая будет выводить список студентов. Для этого необходимо создать класс Студент, а значения свойств устанавливать, используя собственный конструктор.
//
//  2. У студента должно быть свойство age (возраст), оно должно быть только для чтения.
//
//  3. У студента должны быть свойства name, surname и fullName. Первые два должны быть обычными свойствами, а fullName должно возвращать строку состоящую из склеенных name и surname.
//
//  4. Переопределите метод description чтобы при выводе объекта в NSLog выводилась информация по всем его свойствам.
//
//  5. Добавьте метод который будет увеличивать его возраст. (Да свойство age только для чтения).

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *firstStudent = [[Student alloc] init];
        [firstStudent setInfoName:@"Виктор" surname:@"Медведев" age:25];
        
        Student *secondStudent = [[Student alloc] init];
        [secondStudent setInfoName:@"Alex" surname:@"For" age:26];
        
        Student *thirdStudent = [[Student alloc] init];
        [thirdStudent setInfoName:@"Виктория" surname:@"Мазина" age:25];
        
        //Создать программу, которая будет выводить список студентов
        NSLog(@"\n%@ \n%@ \n%@ \n", firstStudent, secondStudent, thirdStudent);
        
        //fullName должно возвращать строку состоящую из склеенных name и surname
        NSLog(@"%@", secondStudent.fullName);
        
        //Добавьте метод который будет увеличивать его возраст. (Да свойство age только для чтения)
        NSLog(@"%@", thirdStudent);
        [thirdStudent increaseAge];
        NSLog(@"%@", thirdStudent);
    }
    return 0;
}
