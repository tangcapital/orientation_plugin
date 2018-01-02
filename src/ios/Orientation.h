

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>


@interface Orientation : CDVPlugin {

}

- (void) lock:(CDVInvokedUrlCommand*) command;
- (void) unlock:(CDVInvokedUrlCommand*) command;

@end
