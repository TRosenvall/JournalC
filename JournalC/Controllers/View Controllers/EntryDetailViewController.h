//
//  EntryDetailViewController.h
//  JournalC
//
//  Created by Timothy Rosenvall on 7/1/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"
#import "EntryController.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) Entry *senderEntry;
@property (strong, nonatomic) Entry *entryPlaceholder;

@end

NS_ASSUME_NONNULL_END
