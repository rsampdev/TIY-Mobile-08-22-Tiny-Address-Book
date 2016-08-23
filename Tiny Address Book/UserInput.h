//
//  UserInput.h
//  TheForest
//
//  Created by Princess Sampson on 8/19/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInput : NSObject

NSString * getStringFromUser(NSInteger strLength, NSString *prompt);

NSInteger getNumberFromUser(NSInteger maxValidChoice, NSString *prompt);

char getCharFromUser(NSString *prompt);

@end
