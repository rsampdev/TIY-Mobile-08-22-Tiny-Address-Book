//
//  AddressBookEntry.m
//  Tiny Address Book
//
//  Created by Rodney Sampson on 8/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "AddressBookEntry.h"

@implementation AddressBookEntry

- (instancetype)initWithName:(NSString *)name EmailAddress:(NSString *)emailAddress Buddy:(NSString *)buddy {
    self = [super init];
    if (self) {
        _name = name;
        _emailAddress = emailAddress;
        _buddy = buddy;
    }
    return self;
}

- (instancetype)init {
    return [self initWithName:@"UNKNOWN" EmailAddress:@"UNKNOWN" Buddy:@"UNKNOWN"];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Name: %@ | Email Address: %@ | Buddy's Name: %@", self.name, self.emailAddress, self.buddy];
}

@end
