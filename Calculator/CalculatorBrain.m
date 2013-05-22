//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Jesse Nelson on 5/21/13.
//  Copyright (c) 2013 Jesse Nelson. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain

    - (void)setOperand:(double)anoperand {
        operand = anoperand;
    }

    -(void)performWaitingOperation {
        if ([@"+" isEqual:waitingOperation]) {
            operand = waitingOperand + operand;
        }
        
        else if ([@"-" isEqual:waitingOperation]) {
            operand = waitingOperand - operand;
        }
        
        else if ([@"*" isEqual:waitingOperation]) {
            operand = waitingOperand * operand;
        }
        
        else if ([@"/" isEqual:waitingOperation]) {
            if (operand) { // Make sure not dividing by 0!
                operand = waitingOperand / operand;
            }
        }
        
    }

    - (double)performOperation:(NSString *)operation {
        if ([operation isEqual:@"sqrt"] ) { //[] Means sending a message!
            operand = sqrt(operand);
        }
        
        else {
            [self performWaitingOperation ];
            waitingOperation = operation;
            waitingOperand = operand;
        }
        return operand;
    }

@end
