//
//  ViewController.m
//  Objective-C UITableView
//
//  Created by NP2 on 5/20/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

#import "ViewController.h"
#import "Guitars.h"

@interface ViewController ()

@property (strong ,nonatomic) NSMutableArray<Guitars *> *guitars;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setGuitars];
    
    self.navigationItem.title = @"Ibanez Guitars";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"TableViewCell"];
}

- (void)setGuitars {
    self.guitars = NSMutableArray.new;
    
    Guitars *guitars6Strings = Guitars.new;
    guitars6Strings.name = @"rg2550e Team J. Craft";
    guitars6Strings.numberOfStrings = @"6";
    
    [self.guitars addObject:guitars6Strings];
    
    Guitars *guitars7Strings = Guitars.new;
    guitars7Strings.name = @"rg 2770 edge pro II";
    guitars7Strings.numberOfStrings = @"7";
    
    [self.guitars addObject:guitars7Strings];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.guitars.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    
    Guitars *guitar = self.guitars[indexPath.row];
    
    cell.textLabel.text = guitar.name;
    return cell;
}

@end
