#import "AppDelegate.h"
#import "ExampleViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    ExampleViewController *exampleViewController = [[ExampleViewController alloc] init];
    self.window.rootViewController = exampleViewController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
