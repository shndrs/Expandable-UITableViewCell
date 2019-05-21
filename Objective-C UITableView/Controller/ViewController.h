//
//  ViewController.h
//  Objective-C UITableView
//
//  Created by NP2 on 5/20/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSMutableArray *arrRowBrand;
@property (strong, nonatomic) NSMutableArray *arrRowNumberOfStrings;
@property (strong, nonatomic) NSMutableArray *arrRowPrice;

@property int selectedIndex;

@end

