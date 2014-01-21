//
//  Temperature Converter.m
//  temperature
//
//  Created by subha on 1/20/14.
//  Copyright (c) 2014 subha. All rights reserved.
//

#import "TemperatureConverter.h"

@implementation TemperatureConverter

+ (float)fahrenheitToCelsius:(float)f {
    return (f - 32) * (5.0/9);
}

+ (float)celsiusToFahrenheit:(float)c {
    return c * (9.0/5) + 32;
}

@end
