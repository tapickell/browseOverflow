//
//  Answer.h
//  browseOverflow
//
//  Created by Todd Pickell on 2/4/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

@interface Answer : NSObject

@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) Person *person;
@property (nonatomic) NSInteger score;
@property (nonatomic) BOOL accepted;

@end
