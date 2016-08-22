//
//  AddressBookEntry.h
//  Tiny Address Book
//
//  Created by Rodney Sampson on 8/22/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressBookEntry : NSObject

@property (nonatomic, copy) NSString * name;
@property (nonatomic, copy) NSString * emailAddress;

- (instancetype)initWithName:(NSString *)name EmailAddress:(NSString *)emailAddress NS_DESIGNATED_INITIALIZER;

@end
