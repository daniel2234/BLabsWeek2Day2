//
//  ViewController.m
//  Delegate2
//
//  Created by Daniel Kwiatkowski on 2015-04-14.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Create an instance of the Project Model
    Project* project = [[Project alloc]init];
    project.listofTask = [[NSMutableArray alloc]init];
    project.name = @"Prepare Meal";
    //list of tasks
    Task *task1 = [[Task alloc]init];
    task1.name = @"Choose Menu";
    task1.delegate = project;
    [project.listofTask addObject:task1];
    //second task
    Task* task2 = [[Task alloc]init];
    task2.name = @"Second Task";
    task2.delegate = project;
    
    task2.done = TRUE;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
