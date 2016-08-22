//
//  AddressBook.m
//  Tiny Address Book
//
//  Created by Rodney Sampson on 8/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

- (instancetype)init {
    self = [super init];
    if (self) {
        _addresses = [[NSMutableDictionary dictionary] init];
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@", [self addresses]];
}

@end
