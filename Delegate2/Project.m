//
//  Project.m
//  Delegate2
//
//  Created by Daniel Kwiatkowski on 2015-04-14.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import "Project.h"

@implementation Project

-(void)thisTask:(Task *)task statusHasChanged:(BOOL)done{
    NSLog(@"Task '%@' is now %@", task.name, done ? @"Done": @"In Progress");
}

@end
