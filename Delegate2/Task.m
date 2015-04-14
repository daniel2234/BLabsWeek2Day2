//
//  Task.m
//  Delegate2
//
//  Created by Daniel Kwiatkowski on 2015-04-14.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import "Task.h"

@implementation Task

-(void)generateReport{
    NSLog(@"%@ is %@", self.name, self.done ? @"Done" : @"In Progress");
}

BOOL _done;

-(void)setDone:(BOOL)done{
    _done = done;
    [self.delegate thisTask:self statusHasChanged:done];
}

-(BOOL)done{
    return _done;
}


@end
