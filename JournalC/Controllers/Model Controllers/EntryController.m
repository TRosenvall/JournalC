//
//  EntryController.m
//  JournalC
//
//  Created by Timothy Rosenvall on 7/1/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

#import "EntryController.h"

@implementation EntryController

+ (instancetype)sharedInstance {
    static EntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [EntryController new];
    });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [NSMutableArray new];
    }
    return self;
}

// Create Entry
- (void)createEntry:(Entry *)entry {
    [_entries addObject:entry];
    NSLog(@"%lu", EntryController.sharedInstance.entries.count);
}

//Update Entry
-(void)updateEntry:(Entry *)newEntry oldEntry:(Entry *)oldEntry{
    [_entries replaceObjectAtIndex:[_entries indexOfObject:oldEntry] withObject:newEntry];
}

// Delete Entry
- (void)deleteEntry:(Entry *)entry {
    [_entries removeObject:entry];
}

@end
