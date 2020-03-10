//
//  ViewController.m
//  objc-b
//
//  Created by NP2 on 3/10/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *productTitle = @"Ibanez Prestige";
    NSString *manufacturer = @"Ibanez Incorporation";
    NSString *longHand = [NSString stringWithUTF8String:"Ibanez Prestige"];
    
    char model[] = "2550e Team J. Craft";
    
    int stringsNumber = 6;
    int quantity = 134;
    float price = 1099.4;
    
    float unitPrice = price/quantity;
    
    NSNumber *unitPriceObject = [NSNumber numberWithFloat:unitPrice];
    
    NSArray *priceArray = @[@(unitPrice)];
    
    float test = [unitPriceObject floatValue] + 5;
    
    NSString *blurb = [NSString stringWithFormat:@"You have selected %@ %s,\r\n made by %@ it's a %i strings guitar and the price is: %.2f USD", productTitle, model, manufacturer, stringsNumber, price];
    NSLog(@"%@", blurb);
    
    
}


@end
