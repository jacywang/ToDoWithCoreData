//
//  UserTaskTableViewController.m
//  ToDoWithCoreData
//
//  Created by JIAN WANG on 5/26/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "UserTaskTableViewController.h"
#import "User.h"

@interface UserTaskTableViewController () {
    NSArray *_array;
}

@end

@implementation UserTaskTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _array = [NSArray arrayWithArray:self.user.toDoList.allObjects];
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
    // Return the number of rows in the section.
    return _array.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"userToDo" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [_array[indexPath.row] title];
    return cell;
}

@end
