//
//  Entry.h
//  JournalC
//
//  Created by Timothy Rosenvall on 7/1/19.
//  Copyright © 2019 Timothy Rosenvall. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Entry : NSObject

@property (nonatomic, copy) NSString* name;
@property (nonatomic, copy) NSString* body;
@property (nonatomic, copy) NSDate* timestamp;

-(instancetype)initWithName:(NSString*)name
                       body:(NSString*)body;

@end

NS_ASSUME_NONNULL_END
