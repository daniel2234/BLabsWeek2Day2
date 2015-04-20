//
//  DetailViewController.h
//  SimpleTableRecipe
//
//  Created by Daniel Kwiatkowski on 2015-04-20.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *recipeLabel;
@property (nonatomic, strong) NSString *recipeName;

@end
