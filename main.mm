#import <Foundation/Foundation.h>
#import "WiFiProxy.h"

int main(int argc, char **argv, char **envp) {
	WiFiProxy *proxy = [WiFiProxy sharedInstance];
	if (argc > 1) {
		NSString *host = [NSString stringWithUTF8String:argv[1]];
		NSString *port = [NSString stringWithUTF8String:argv[2]];
		[proxy setProxy:host port:[port intValue] proxsupport:1];
	} else {
		[proxy setProxy:@"" port:0 proxsupport:0];
	}
	return 0;
}
