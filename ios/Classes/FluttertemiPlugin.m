#import "FluttertemiPlugin.h"
#import <fluttertemi/fluttertemi-Swift.h>

@implementation FluttertemiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFluttertemiPlugin registerWithRegistrar:registrar];
}
@end
