//
//  ITunesFinder.m
//  Chapter 12
//
//  Created by Thomas Eapen on 10-04-29.
//  Copyright 2010 NowLabs. All rights reserved.
//

#import "ITunesFinder.h"


@implementation ITunesFinder

- (void)netServiceBrowser:(NSNetServiceBrowser *)b
		   didFindService:(NSNetService *)service
			   moreComing:(BOOL)moreComing {
	[service resolveWithTimeout:10];
	NSLog(@"found one! Name is %@", [service name]);
}

- (void)netServiceBrowser:(NSNetServiceBrowser *)b
		   didRemoveService:(NSNetService *)service
			   moreComing:(BOOL)moreComing {
	[service resolveWithTimeout:10];
	NSLog(@"found one! Name is %@", [service name]);
}


@end
