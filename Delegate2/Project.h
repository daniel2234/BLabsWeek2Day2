//
//  Project.h
//  Delegate2
//
//  Created by Daniel Kwiatkowski on 2015-04-14.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Task.h"//look locally

@interface Project : NSObject<TaskDelegate>

@property(strong)NSString* name;
@property(strong)NSMutableArray *listofTask;


@end
