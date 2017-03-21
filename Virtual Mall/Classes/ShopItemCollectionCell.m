//
//  ShopItemCollectionCell.m
//  Virtual Mall
//
//  Created by Mohini Sindhu  on 15/03/17.
//  Copyright © 2017 mindfire. All rights reserved.
//

#import "ShopItemCollectionCell.h"

@implementation ShopItemCollectionCell

- (void)awakeFromNib
{
    [super awakeFromNib];
	// set up border of collection cell
	self.layer.borderWidth=2.0f;
	self.layer.borderColor=[UIColor darkGrayColor].CGColor;
}

// method sets up cell attributes
-(void) setUpCellAttribtes
{
	// to be done
	self.itemImage.image=[UIImage imageNamed:@"BlueShirt.jpg"];
	self.itemName.text=@"Blue Shirt";
	self.itemPrice.text=@"Rs.1000";
}

@end
