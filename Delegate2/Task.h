//
//  Task.h
//  Delegate2
//
//  Created by Daniel Kwiatkowski on 2015-04-14.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Task;

@protocol TaskDelegate <NSObject>

@optional
-(void)thisTask:(Task*)task statusHasChanged:(BOOL)done;
@end


@interface Task : NSObject
@property(strong)NSString *name;
@property(assign)BOOL done;
@property(assign)id <TaskDelegate> delegate;

@end
