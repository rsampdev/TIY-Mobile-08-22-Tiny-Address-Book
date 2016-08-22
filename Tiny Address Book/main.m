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
        NSString * buddy = nil;
        AddressBookEntry * newEntry = nil;
        
        NSInteger choice = 0;
        
        while (choice == 0) {
            name = getStringFromUser(100, @"What is your name?");
            emailAddress = getStringFromUser(100, @"What is your email address?");
            buddy = getStringFromUser(100, @"What is your buddy's name?");
            
            newEntry = [[AddressBookEntry alloc] initWithName:name EmailAddress:emailAddress Buddy:buddy];
            
            [addressBook addAddressBookEntry:newEntry];
            
            choice = getNumberFromUser(2, @"Enter 1 if you are done entering entries. Enter 0 if you want to add another entry.");
        }
        
        [addressBook displayAddressBookEntrys];
    }
    return 0;
}
