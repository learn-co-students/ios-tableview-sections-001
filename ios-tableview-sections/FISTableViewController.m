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

@end

@implementation FISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FISStudent *student1 = [[FISStudent alloc] initWithName:@"Moe" favoriteFood:@"ham" favoriteColor:@"blue" favoriteMusicalArtist:@"Bach" favoriteGame:@"twister"];
    FISStudent *student2 = [[FISStudent alloc] initWithName:@"Larry" favoriteFood:@"cheese" favoriteColor:@"red" favoriteMusicalArtist:@"Mozart" favoriteGame:@"hearts"];
    FISStudent *student3 = [[FISStudent alloc] initWithName:@"Curly" favoriteFood:@"bread" favoriteColor:@"green" favoriteMusicalArtist:@"Handel" favoriteGame:@"uno"];
    self.students = [NSArray arrayWithObjects:student1, student2, student3, nil];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return [self.students count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    FISStudent *student = [self.students objectAtIndex:section];
    return [student.favoriteThings count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *SimpleIdentifier = @"SimpleIdentifier";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:SimpleIdentifier];
    }
    FISStudent *student = [self.students objectAtIndex:indexPath.section];

    NSString *labelText = @"";
    if (indexPath.row == 0) {
        labelText = [NSString stringWithFormat:@"Food: %@", student.favoriteFood];
    } else if (indexPath.row == 1) {
        labelText = [NSString stringWithFormat:@"Color: %@", student.favoriteColor];
    } else if (indexPath.row == 2) {
        labelText = [NSString stringWithFormat:@"Musical Artist: %@", student.favoriteMusicalArtist];
    } else if (indexPath.row == 3) {
        labelText = [NSString stringWithFormat:@"Game: %@", student.favoriteGame];
    }
    cell.textLabel.text = labelText;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu", indexPath.row];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    FISStudent *student = [self.students objectAtIndex:section];
    return student.name;
}

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 3;
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
