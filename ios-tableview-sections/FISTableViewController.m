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

@property (strong, nonatomic) NSArray *students;

@end

@implementation FISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FISStudent *student1 = [[FISStudent alloc]init];
    FISStudent *student2 = [[FISStudent alloc]init];
    FISStudent *student3 = [[FISStudent alloc]init];
    
    student1.name = @"James";
    student2.name = @"Harold";
    student3.name = @"Jess";
    
    student1.favoriteThings = @[@"Cheese", @"Ham", @"Water"];
    student2.favoriteThings = @[@"Beer", @"Cheez-its", @"Celery"];
    student3.favoriteThings = @[@"Apple Sauce", @"Pinto Beans", @"Sun Chips"];
    
    _students = @[student1, student2, student3];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return (NSInteger)[_students count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    
    
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"expandingCell" forIndexPath:indexPath];
    for (NSUInteger x = 0; x<[self.students count]; x++) {
        if (indexPath.section == (NSInteger)x ) {
        
            FISStudent *stud = self.students[x];
    
        for (NSUInteger i = 0; i<[stud.favoriteThings count]; i++) {
            if(indexPath.row == (NSInteger)i){
            NSString *string = stud.favoriteThings[i];
            cell.textLabel.text = string;
                NSString *integerString = [NSString stringWithFormat:@"%lu", (unsigned long)i];
                cell.detailTextLabel.text = integerString;
                return cell;}
        
    }
        }
        
    }
    // Configure the cell...
    return cell;
    
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    for (NSUInteger x = 0; x<[self.students count]; x++) {
        if (section == (NSInteger)x ) {
            
            FISStudent *stud = self.students[x];
            self.title = stud.name;
            
            
        }}
    return self.title;
}

-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath{
    
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
