//
//  main.m
//  HW_6_Lemeshaev_Stanislav
//
//  Created by Станислав Лемешаев on 24/04/2019.
//  Copyright © 2019 Станислав Лемешаев. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Task 1. Calculator with blocks
        // Task 2. Use separate queues to print resulsts
        int firstNumber = 26;
        int secondNumber = 2;
        
        int sum = [Arithmetics beginWithAction: 1 firstNumber:firstNumber secondNumber:secondNumber];
        int substract = [Arithmetics beginWithAction: 2 firstNumber:firstNumber secondNumber:secondNumber];
        int multiply = [Arithmetics beginWithAction: 3 firstNumber:firstNumber secondNumber:secondNumber];
        int divide = [Arithmetics beginWithAction: 4 firstNumber:firstNumber secondNumber:secondNumber];
        int modulo = [Arithmetics beginWithAction: 5 firstNumber:firstNumber secondNumber:secondNumber];
        int sumSquares = [Arithmetics beginWithAction: 6 firstNumber:firstNumber secondNumber:secondNumber];
        
        dispatch_queue_t asyncQueue = dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0);
        dispatch_async(asyncQueue, ^{
            NSLog(@"Just 1");
            NSLog(@"Just 2");
            NSLog(@"Just 3");
            NSLog(@"Just 4");
            NSLog(@"Just 5");
            NSLog(@"Just 6");
            NSLog(@"Just 7");
            NSLog(@"Just 8");
            NSLog(@"Just 9");
            // Completion order: 1-9, but can be printed out during another operations
        });
        
        // Create concurrent queue
        dispatch_queue_t consecutiveQueue = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0);
        // Add sync tasks
        dispatch_sync(consecutiveQueue, ^{
            NSLog(@"%d + %d = %d", firstNumber, secondNumber, sum);
            NSLog(@"%d - %d = %d", firstNumber, secondNumber, substract);
            // Completion order: sum, substract
        });
        
        // Suspend consecutiveQueue
        dispatch_suspend(consecutiveQueue);
        
        // Create another queue
        dispatch_queue_t anotherQueue = dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0);
        dispatch_async(anotherQueue, ^{
            NSLog(@"%d * %d = %d", firstNumber, secondNumber, multiply);
            NSLog(@"%d / %d = %d", firstNumber, secondNumber, divide);
            // Completion order: multiply, divide. Can be printed out during another operations
        });
        
        // Create a queue with an NSOperationQueue
        NSOperationQueue *operationQueue = [NSOperationQueue new];
        [operationQueue addOperationWithBlock:^{
            NSLog(@"%d %% %d = %d", firstNumber, secondNumber, modulo);
        }];
        [operationQueue addOperationWithBlock:^{
            NSLog(@"%d^2 + %d^2 = %d", firstNumber, secondNumber, sumSquares);
        }];
        
        // Resume consecutiveQueue
        dispatch_resume(consecutiveQueue);
        // Will now probably complete consecutiveQueue after anotherQueue
    }
    return 0;
}
