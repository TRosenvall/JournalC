//
//  EntryListTableViewController.h
//  JournalC
//
//  Created by Timothy Rosenvall on 7/1/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"
#import "EntryController.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryListTableViewController : UITableViewController

@property (nonatomic, strong) Entry *senderEntry;

@end

NS_ASSUME_NONNULL_END
