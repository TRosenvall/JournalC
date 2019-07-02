//
//  EntryDetailViewController.m
//  JournalC
//
//  Created by Timothy Rosenvall on 7/1/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

#import "EntryDetailViewController.h"

@interface EntryDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleTextfield;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;


@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleTextfield.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if (_senderEntry.name != nil && _senderEntry.body != nil) {
        _titleTextfield.text = _senderEntry.name;
        _bodyTextView.text = _senderEntry.body;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    return YES;
}

- (IBAction)saveButtonTapped:(id)sender {
    if (_senderEntry.name == nil && _senderEntry.body == nil) {
        if (![_titleTextfield.text isEqual: @""] && ![_bodyTextView.text isEqual: @""]) {
            Entry *entryPlaceholder = [[Entry alloc] initWithName:_titleTextfield.text body:_bodyTextView.text];
            [EntryController.sharedInstance createEntry:entryPlaceholder];
            NSLog(@"%@", entryPlaceholder.name);
        }
    } else {
        Entry *entryPlaceholder = [[Entry alloc] initWithName:_titleTextfield.text body:_bodyTextView.text];
        [EntryController.sharedInstance updateEntry:entryPlaceholder oldEntry:_senderEntry];
        NSLog(@"%@", entryPlaceholder.name);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)clearTextButtonTapped:(id)sender {
    _titleTextfield.text = @"";
    _bodyTextView.text = @"";
}

@end
