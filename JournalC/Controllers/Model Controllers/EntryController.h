//
//  EntryController.h
//  JournalC
//
//  Created by Timothy Rosenvall on 7/1/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

// Singleton
+(EntryController *)sharedInstance;

// Source Of Truth
@property (nonatomic, strong) NSMutableArray* entries;

// CRUD Functions
// Create
-(void)createEntry:(Entry *)entry;

// Read

// Update
-(void)updateEntry:(Entry *)newEntry oldEntry:(Entry *)oldEntry;

// Delete
-(void)deleteEntry:(Entry *)entry;

@end

NS_ASSUME_NONNULL_END
