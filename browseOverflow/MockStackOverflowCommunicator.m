//
//  MockStackOverflowCommunicator.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/9/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "MockStackOverflowCommunicator.h"

@implementation MockStackOverflowCommunicator
{
    BOOL wasAskedToFetchQuestions;
}

- (void) searchForQuestionsWithTag: (NSString *)tag
{
    wasAskedToFetchQuestions = YES;
}

- (BOOL) wasAskedToFetchQuestions
{
    return wasAskedToFetchQuestions;
}

@end
