//
//  CustomTableViewController.m
//  SimpleTableRecipe
//
//  Created by Daniel Kwiatkowski on 2015-04-14.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//
#import "CustomTableViewCell.h"
#import "CustomTableViewController.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController
{
    NSArray *recipeNames;
    NSArray *recipeImages;
    NSArray *recipeTimes;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    recipeNames = @[@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with MMQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini"];
    recipeImages = @[@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg",
                      @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg",
                      @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg",
                      @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg",
                      @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg",
                      @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg"];
    recipeTimes = @[@"20 min",@"20 min",@"20 min",@"20 min",@"20 min",@"20 min",@"20 min",@"20 min",@"20 min",@"20 min",@"20 min",@"20 min",@"20 min",@"20 min",@"20 min"];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [recipeNames count];
    return [recipeTimes count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    CustomTableViewCell *cell = (CustomTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.nameLabel.text = [recipeNames objectAtIndex:indexPath.row];
    cell.prepTimeLabel.text = [recipeTimes objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];;
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
