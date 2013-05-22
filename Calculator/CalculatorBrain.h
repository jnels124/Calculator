//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Jesse Nelson on 5/21/13.
//  Copyright (c) 2013 Jesse Nelson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject {
    double operand;
    NSString * waitingOperation;
    double waitingOperand;
}

- (void)setOperand:(double)anoperand;
- (double)performOperation:(NSString *)operation;

@end
