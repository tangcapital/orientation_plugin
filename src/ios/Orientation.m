

#import "Orientation.h"
#import "MainViewController.h"

@implementation Orientation

- (void) lock:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    MainViewController *rootViewController = (MainViewController*) window.rootViewController;
    [rootViewController setRotationAllowed:NO];

    // FORCES PHONE TO ROTATE TO PORTRAIT
    [[UIDevice currentDevice] setValue:
     [NSNumber numberWithInteger: UIInterfaceOrientationPortrait]
                                forKey:@"orientation"];

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

- (void) unlock:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    MainViewController *rootViewController = (MainViewController*) window.rootViewController;
    [rootViewController setRotationAllowed:YES];

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
