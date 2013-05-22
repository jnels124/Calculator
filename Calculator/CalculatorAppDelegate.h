//
//  AppDelegate.h
//  Calculator
//
//  Created by Jesse Nelson on 5/21/13.
//  Copyright (c) 2013 Jesse Nelson. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CalculatorViewController;

@interface CalculatorAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CalculatorViewController *viewController;

@end
