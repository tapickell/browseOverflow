//
//  MockStackOverflowCommunicator.h
//  browseOverflow
//
//  Created by Todd Pickell on 2/9/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "StackOverflowCommunicator.h"

@interface MockStackOverflowCommunicator : StackOverflowCommunicator

- (BOOL) wasAskedToFetchQuestions;

@end
