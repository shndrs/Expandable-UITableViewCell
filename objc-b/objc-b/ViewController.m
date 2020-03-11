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
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0);
    dispatch_async(queue, ^{
        
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
       
        // MARK: - Collection Types
        /// - Note: Array, Dictionary
       
        NSDictionary *bostonDict = @{@"City":@"Boston", @"Country":@"USA"};
       
        NSMutableDictionary *mutBostonDict = [[NSMutableDictionary alloc] initWithDictionary: bostonDict];
       
        NSString *beantown = [bostonDict valueForKey:@"City"];
        NSLog(@"%@", beantown);
        [mutBostonDict setValue:@"Italy" forKey:@"Country"];
        [mutBostonDict setValue:@"Milan" forKey:@"City"];
       
        NSMutableDictionary *guitarDict = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"Ibanez", @"Brand", @"rg2550e Team J. Craft", @"Model", nil];
       
        [guitarDict setValue:@"Ormsby" forKey:@"Brand"];
        [guitarDict setValue:@"HypeGRT" forKey:@"Model"];
        [guitarDict addEntriesFromDictionary:@{@"NumberOfStrings":@(7)}];
       
        NSArray *shitArray = @[mutBostonDict, guitarDict];
        
        NSLog(@"%@", shitArray);
        
        NSUInteger i = [shitArray count];
        NSUInteger j = shitArray.count;
        
        NSArray *objectAtIndex = [shitArray objectAtIndex:1];
        
        NSLog(@"\n array's count: %lu \n array's count: %lu \n Object At Index: %@",(unsigned long)i, (unsigned long)j, objectAtIndex);
        
        NSString *guitarModel = [[shitArray objectAtIndex:1] valueForKey:@"Model"];
        
        NSLog(@"Guitar model at index 1 is: %@", guitarModel);
        
        int noOfStrings = [[[shitArray objectAtIndex:1] valueForKey:@"NumberOfStrings"] intValue];
        
        NSLog(@"Number of strings is: %i", noOfStrings);
        
        NSMutableArray *nameArray = [[NSMutableArray alloc] initWithObjects:@"Ibanez", @"Schecter", @"Ormsby", @"Kiesel", nil];
        
        [nameArray addObject:@"Aviator"];
        [nameArray removeObjectAtIndex:3];
        [nameArray replaceObjectAtIndex:2 withObject:@"Skervesen"];
        
//        NSArray <NSString *> * stringArray;
        
        // MARK: - Control Flow
        /// Note: - Conditionals, Loops, Operators and etc
        
        int nu = 2;
        
        if (nu < 3) {
            nu = 5;
        } else {
            nu = 0;
        }
        
        for (int i = 0; i >= 10; i++) {
            int j = 78;
            NSLog(@"===> %i \n", j * i);
        }
        
        for (NSString *name in nameArray) {
            NSLog(@"===> %@ \n", name.uppercaseString);
        }
        
    });
    
}

@end
