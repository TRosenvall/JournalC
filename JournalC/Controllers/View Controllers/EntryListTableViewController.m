//
//  EntryListTableViewController.m
//  JournalC
//
//  Created by Timothy Rosenvall on 7/1/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

#import "EntryListTableViewController.h"
#import "Entry.h"
#import "EntryController.h"
#import "EntryDetailViewController.h"

@interface EntryListTableViewController ()

@end

@implementation EntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return EntryController.sharedInstance.entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];

    Entry *entry = EntryController.sharedInstance.entries[indexPath.row];
    
    cell.textLabel.text = entry.name;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Entry *entry = EntryController.sharedInstance.entries[indexPath.row];
        [EntryController.sharedInstance deleteEntry:entry];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"updateDetailView"]) {
        EntryListTableViewController *vc = [segue destinationViewController];
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        Entry *entry = EntryController.sharedInstance.entries[indexPath.row];
        vc.senderEntry = entry;
    }
}


@end
