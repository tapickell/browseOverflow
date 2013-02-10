//
//  MockStackOverflowManagerDelegate.h
//  browseOverflow
//
//  Created by Todd Pickell on 2/5/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackOverflowManagerDelegate.h"

@class Question;

@interface MockStackOverflowManagerDelegate : NSObject <StackOverflowManagerDelegate>
@property (strong) NSError *fetchError;
@property (strong) NSArray *fetchedQuestions;
@property (strong) Question *successQuestion;
@property (strong) Question *bodyQuestion;

- (BOOL) wasAskedToFetchQuestions;

@end
