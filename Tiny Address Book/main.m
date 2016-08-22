//
//  main.m
//  Tiny Address Book
//
//  Created by Rodney Sampson on 8/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"
#import "UserInput.h"
#import "AddressBookEntry.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AddressBook * addressBook = [[AddressBook alloc] init];
        
        NSString * name = nil;
        NSString * emailAddress = nil;
        
        name = getStringFromUser(100, @"What is your name?");
        emailAddress = getStringFromUser(100, @"What is your email address?");
        
        AddressBookEntry * newEntry = [[AddressBookEntry alloc] initWithName:name EmailAddress:emailAddress];
        
        [addressBook addAddressBookEntry:newEntry];
        
        for (int i = 0; i < addressBook.addresses.count; i++) {
            NSLog(@"%@", [addressBook.addresses objectForKey: newEntry.name]);
        }
    }
    return 0;
}
