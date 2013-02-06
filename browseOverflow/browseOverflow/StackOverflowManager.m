//
//  StackOverflowManger.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/5/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "StackOverflowManager.h"


@implementation StackOverflowManager

@synthesize delegate;

- (void) setDelegate:(id<StackOverflowManagerDelegate>)newDelegate
{
    if (newDelegate && ![newDelegate conformsToProtocol: @protocol(StackOverflowManagerDelegate)]) {
        [[NSException exceptionWithName: NSInvalidArgumentException reason: @"Delegate object does not conform to the delegate protocol" userInfo: nil] raise];
    }
    delegate = newDelegate;
}

@end
