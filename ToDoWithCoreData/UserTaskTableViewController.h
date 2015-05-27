//
//  UserTaskTableViewController.h
//  ToDoWithCoreData
//
//  Created by JIAN WANG on 5/26/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import <UIKit/UIKit.h>
@class User;

@interface UserTaskTableViewController : UITableViewController

@property (nonatomic, strong) User *user;

@end
