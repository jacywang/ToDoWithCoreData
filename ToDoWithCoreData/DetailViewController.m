//
//  DetailViewController.m
//  ToDoWithCoreData
//
//  Created by JIAN WANG on 5/26/15.
//  Copyright (c) 2015 JWANG. All rights reserved.
//

#import "DetailViewController.h"
#import "User.h"
#import "PickUserTableViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem valueForKey:@"title"];
        User *user = [self.detailItem valueForKey:@"user"];
        if (user != nil) {
            self.usernameLabel.text = [[user.firstname stringByAppendingString:@" "] stringByAppendingString:user.lastname];
        } else {
            self.usernameLabel.text = @"None";
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self configureView];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"assignUser"]) {
        PickUserTableViewController *pickUserViewController = segue.destinationViewController;
        pickUserViewController.managedObjectContext = self.managedObjectContext;
        pickUserViewController.item = self.detailItem;
    }
    
}

@end
