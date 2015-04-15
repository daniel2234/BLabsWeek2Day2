//
//  CustomTableViewCell.h
//  SimpleTableRecipe
//
//  Created by Daniel Kwiatkowski on 2015-04-14.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UILabel *nameLabel;
@property (nonatomic,weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic,weak) IBOutlet UIImageView *thumbnailImageView;

@end
