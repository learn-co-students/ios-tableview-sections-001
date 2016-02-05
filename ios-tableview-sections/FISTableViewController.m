//
//  FISTableViewController.m
//  ios-tableview-sections
//
//  Created by Tom OMalley on 5/28/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISTableViewController.h"
#import "FISStudent.h"

@interface FISTableViewController ()
@property (nonatomic, strong) NSArray *students;
@end

@implementation FISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FISStudent *andy = [[FISStudent alloc] initWithName:@"Andy" favoriteThings:@[@"Campbell's Soup", @"Screenprinting", @"Liz Taylor", @"Black skinny jeans", @"Sunglasses"]];
    FISStudent *anna = [[FISStudent alloc] initWithName:@"Anna" favoriteThings:@[@"Fur coats", @"Fur hats", @"Fur boots", @"Fur mittens", @"Sunglasses", @"Scrambled eggs and salmon"]];
    FISStudent *zachary = [[FISStudent alloc] initWithName:@"Zachary" favoriteThings:@[@"Chick Fil A", @"Real estate", @"Travel", @"Tacky t-shirts"]];
    [self setStudents:@[andy, anna, zachary]];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return (NSInteger)self.students.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    FISStudent *student = [self.students objectAtIndex:(NSUInteger)section];
    return student.name;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return (NSInteger)((FISStudent *)[self.students objectAtIndex:(NSUInteger)section]).favoriteThings.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"expandingCell" forIndexPath:indexPath];
    
    FISStudent *student = [self.students objectAtIndex:(NSUInteger)indexPath.section];
    NSString *favoriteThing = [student.favoriteThings objectAtIndex:(NSUInteger)indexPath.row];
    [cell.textLabel setText:favoriteThing];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 1;
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
