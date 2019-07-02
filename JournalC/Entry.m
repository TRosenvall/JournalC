//
//  Entry.m
//  JournalC
//
//  Created by Timothy Rosenvall on 7/1/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (instancetype)initWithName:(NSString *)name body:(NSString *)body {
    self = [super init];
    if (self) {
        _name = name;
        _body = body;
        _timestamp = [NSDate new];
    }
    return self;
}

@end
