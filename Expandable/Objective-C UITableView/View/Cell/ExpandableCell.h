//
//  ExpandableCell.h
//  Objective-C UITableView
//
//  Created by NP2 on 5/21/19.
//  Copyright © 2019 shndrs. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExpandableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *brandLabel;
@property (weak, nonatomic) IBOutlet UILabel *brandTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *numberOfStringsLabel;
@property (weak, nonatomic) IBOutlet UILabel *numberOfStringsTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceTitleLabel;


@end

NS_ASSUME_NONNULL_END
