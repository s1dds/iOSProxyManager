#import <Foundation/Foundation.h>
#import "WiFiProxy.h"

int main(int argc, char **argv, char **envp) {
	WiFiProxy *proxy = [WiFiProxy sharedInstance];
	if (argc > 1) {
		NSString *host = [NSString stringWithUTF8String:argv[1]];
		NSString *port = [NSString stringWithUTF8String:argv[2]];
		NSLog(@"Proxy -- %@ : %d", host, [port intValue]);
		[proxy setProxy:host port:[port intValue] shouldEnableProxy:YES];
	} else {
		[proxy setProxy:@"" port:0 shouldEnableProxy:NO];
	}
	return 0;
}
