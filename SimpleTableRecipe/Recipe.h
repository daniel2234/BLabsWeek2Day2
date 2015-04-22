//
//  Recipe.h
//  SimpleTableRecipe
//
//  Created by Daniel Kwiatkowski on 2015-04-22.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *prepTime;
@property (strong,nonatomic) NSString *image;
@property (strong,nonatomic) NSArray *ingredients;

@end
