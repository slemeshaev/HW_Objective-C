//
//  main.m
//  HW_5_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 18/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Wheel.h"
#import "Engine.h"
#import "Car.h"
#import "Wing.h"
#import "Head.h"
#import "Bird.h"
#import "Flock.h"

NSNumber* add(NSNumber* a, NSNumber* b) {
    return @([a intValue] + [b intValue]);
}

NSNumber* subtract(NSNumber* a, NSNumber* b) {
    return @([a intValue] - [b intValue]);
}

NSNumber* multiply(NSNumber* a, NSNumber* b) {
    return @([a intValue] * [b intValue]);
}

NSNumber* divide(NSNumber* a, NSNumber* b) {
    if (b == 0) {
        NSLog(@"Division by zero!");
    } else {
        return @([a intValue] / [b intValue]);
    }
    return @0;
}

NSNumber* divisionRemainder(NSNumber* a, NSNumber* b) {
    if (b == 0) {
        NSLog(@"Division by zero!");
    } else {
        return @([a intValue] % [b intValue]);;
    }
    return @0;
}

typedef enum {
    Add = '+',
    Sub = '-',
    Mul = '*',
    Div = '/',
    DivRem = '%'
} Operation;

NSNumber* calculate(Operation oper, NSNumber* x, NSNumber* y) {
    NSNumber* (* func) (NSNumber*, NSNumber*);
    switch (oper) {
        case Add:
            func = add;
            break;
        case Sub:
            func = subtract;
            break;
        case Mul:
            func = multiply;
            break;
        case Div:
            func = divide;
            break;
        case DivRem:
            func = divisionRemainder;
            break;
    }
    return func(x,y);
}

int main(int argc, const char * argv[]) {
    // Задание 1
    NSLog(@"\n************ Lesson-5 Ex-1\n");
    Car *car = [[Car alloc] init];
    
    Wheel *wheel1 = [[Wheel alloc] initWithNumber:@1];
    Wheel *wheel2 = [[Wheel alloc] initWithNumber:@2];
    Wheel *wheel3 = [[Wheel alloc] initWithNumber:@3];
    Wheel *wheel4 = [[Wheel alloc] initWithNumber:@4];
    
    NSArray *wheels = [[NSArray alloc] initWithObjects:wheel1 ,wheel2, wheel3, wheel4, nil];
    
    Engine *engine = [[Engine alloc] initWithModel:@"Engine 1x"];
    [car configWithEngine:engine andWheels:wheels];
    [car release];
    
    // Задание 2,4
    NSLog(@"\n************ Lesson-5 Ex-2,4\n");
    
    @autoreleasepool {
        NSLog(@"%@ %c %@ = %@", @2, '+', @4, calculate('+',@2,@4));
        NSLog(@"%@ %c %@ = %@", @2, '-', @4, calculate('-',@2,@4));
        NSLog(@"%@ %c %@ = %@", @2, '*', @4, calculate('*',@2,@4));
        NSLog(@"%@ %c %@ = %@", @2, '/', @4, calculate('/',@2,@4));
        NSLog(@"%@ %c %@ = %@", @2, '%', @4, calculate('%',@2,@4));
    }
    
    // Задание 3
    NSLog(@"\n************ Lesson-5 Ex-3\n");
    Flock *flock = [[Flock alloc] init];
    
    NSMutableArray *birds = [[NSMutableArray alloc] init];
    
    for(int i=0; i<3; i++) {
        Bird *bird = [[Bird alloc] init];
        
        Wing *wing1 = [[Wing alloc] initWithNumber:[[NSString alloc] initWithFormat:@"%d-1", i]];
        Wing *wing2 = [[Wing alloc] initWithNumber:[[NSString alloc] initWithFormat:@"%d-2", i]];
        NSArray *wings = [[NSArray alloc] initWithObjects:wing1 ,wing2, nil];
        
        Head *head = [[Head alloc] initWithName: [[NSString alloc] initWithFormat:@"%d", i]];
        
        [bird configWithHead:head andWings:wings];
        [birds addObject:bird];
    }
    [flock configWithBirds:birds];
    [flock release];
    
    return 0;
}
