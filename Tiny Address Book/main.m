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
        NSMutableArray * entries = [[NSMutableArray alloc] init];
        NSInteger choice = 0;
        
        while (choice == 0) {
            name = getStringFromUser(100, @"What is your name?");
            emailAddress = getStringFromUser(100, @"What is your email address?");
            buddy = getStringFromUser(100, @"What is your buddy's name?");
            
            newEntry = [[AddressBookEntry alloc] initWithName:name EmailAddress:emailAddress Buddy:buddy];
            
            [entries addObject:newEntry];
            [addressBook addAddressBookEntry:newEntry];
            
            choice = getNumberFromUser(2, @"Enter 1 if you are done entering entries. Enter 0 if you want to add another entry.");
        }
        
        choice = getNumberFromUser(2, @"Enter 1 if you want to print out all the entries. Enter 0 if you want to select the entries to be printed.");
        
        if (choice == 0) {
            BOOL choosing = YES;
            while (choosing) {
                choice = getNumberFromUser(999999, @"Enter 'y' if you are done. Enter 'n' if you are still adding entries.");
                if (choice == (int)'y') {
                    break;
                } else {
                    choice = 0;
                }
            }
        } else {
            [addressBook displayAddressBookEntrys];
        }
        
    }
    return 0;
}
