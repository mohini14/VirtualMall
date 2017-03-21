//
//  ShopTableViewCell.m
//  Virtual Mall
//
//  Created by Aditya Kumar on 15/03/17.
//  Copyright © 2017 mindfire. All rights reserved.
//

#import "ShopTableViewCell.h"

@implementation ShopTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//This method will set shop details to current table cell item
- (void) setValueInToTableCell:(Shop*)shop
{
    self.shopNameLabel.text = shop.shopName;
    self.shopAddressLabel.text = shop.shopAddress;
    self.shopImageView.image = [UIImage imageNamed:shop.shopImageName];
    self.shopRatingImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@%@%@",@"Star",[shop.shopRating stringValue],@".png"]];
}

@end
