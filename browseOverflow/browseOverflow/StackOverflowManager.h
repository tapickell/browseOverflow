//
//  StackOverflowManger.h
//  browseOverflow
//
//  Created by Todd Pickell on 2/5/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StackOverflowManagerDelegate.h"
#import "StackOverflowCommunicator.h"

@interface StackOverflowManager : NSObject

@property (nonatomic, weak) id<StackOverflowManagerDelegate> delegate;
@property (strong) StackOverflowCommunicator *communicator;


- (void) fetchQuestionsOnTopic: (Topic *)topic;

@end
