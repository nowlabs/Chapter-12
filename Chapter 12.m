#import <Foundation/Foundation.h>
#import "ITunesFinder.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	NSNetServiceBrowser *browser = [[NSNetServiceBrowser alloc] init];
	ITunesFinder *finder = [[ITunesFinder alloc] init];
	[browser setDelegate:finder];
	[browser searchForServicesOfType:@"_daap._tcp"
							inDomain:@"local."];
	NSLog(@"Begun Browsing");
	[[NSRunLoop currentRunLoop] run];
	
	[browser release];
	[finder release];
    [pool drain];
    return 0;
}
