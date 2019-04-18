//
//  Student.m
//  HW_4_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 10/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//

#import "Student.h"

@implementation Student
// fullName должно возвращать строку состоящую из склеенных name и surname
- (NSString *)fullName
{
    return [NSString stringWithFormat:@"%@ %@", self.name, self.surname];
}

// создать класс Студент, а значения свойств устанавливать, используя собственный конструктор
- (void)setInfoName:(NSString *)name
            surname:(NSString *)surname
                age:(NSInteger)age
{
    _name = name;
    _surname = surname;
    _age = age;
}

// переопределить метод description чтобы при выводе объекта в NSLog выводилась информация по всем его свойствам
- (NSString *)description
{
    return [NSString stringWithFormat:@"Имя: %@, фамилия: %@, %@ возраст: %ld ", self.name, self.surname, self.fullName, (long)self.age];
}

// добавить метод который будет увеличивать его возраст. (свойство age только для чтения)
- (void)increaseAge
{
    _age++;
}
@end
