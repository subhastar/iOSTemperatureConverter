//
//  ConversionViewController.m
//  temperature
//
//  Created by subha on 1/20/14.
//  Copyright (c) 2014 subha. All rights reserved.
//

#import "ConversionViewController.h"
#import "TemperatureConverter.h"

@interface ConversionViewController ()
@property (weak, nonatomic) IBOutlet UITextField *fahrenheitField;
@property (weak, nonatomic) IBOutlet UITextField *celsiusField;
- (IBAction)convertFahrenheit:(id)sender;
- (IBAction)convertCelsius:(id)sender;
- (IBAction)ontTap:(id)sender;

@end

@implementation ConversionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertFahrenheit:(id)sender {
    float fahrenheit = [self.fahrenheitField.text floatValue];

    self.celsiusField.text = [NSString stringWithFormat:@"%0.01f", [TemperatureConverter fahrenheitToCelsius:fahrenheit]];
}

- (IBAction)convertCelsius:(id)sender {
    float celsius = [self.celsiusField.text floatValue];
    self.fahrenheitField.text = [NSString stringWithFormat:@"%0.01f", [TemperatureConverter celsiusToFahrenheit:celsius]];
}

- (IBAction)ontTap:(id)sender {
    [self.view endEditing:YES];
}

@end
