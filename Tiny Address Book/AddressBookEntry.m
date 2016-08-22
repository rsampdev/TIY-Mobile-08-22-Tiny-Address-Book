//
//  AddressBookEntry.m
//  Tiny Address Book
//
//  Created by Rodney Sampson on 8/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "AddressBookEntry.h"

@implementation AddressBookEntry

- (instancetype)initWithName:(NSString *)name EmailAddress:(NSString *)emailAddress {
    self = [super init];
    if (self) {
        _name = name;
        _emailAddress = emailAddress;
    }
    return self;
}

- (instancetype)init {
    return [self initWithName:@"UNKNOWN" EmailAddress:@"UNKNOWN"];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Name: %@ | Email Address: %@", self.name, self.emailAddress];
}

@end
