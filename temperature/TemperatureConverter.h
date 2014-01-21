//
//  Temperature Converter.h
//  temperature
//
//  Created by subha on 1/20/14.
//  Copyright (c) 2014 subha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TemperatureConverter : NSObject

+ (float)fahrenheitToCelsius:(float)f;
+ (float)celsiusToFahrenheit:(float)c;

@end
