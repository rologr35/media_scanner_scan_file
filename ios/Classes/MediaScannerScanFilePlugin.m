#import "MediaScannerScanFilePlugin.h"
#if __has_include(<media_scanner_scan_file/media_scanner_scan_file-Swift.h>)
#import <media_scanner_scan_file/media_scanner_scan_file-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "media_scanner_scan_file-Swift.h"
#endif

@implementation MediaScannerScanFilePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMediaScannerScanFilePlugin registerWithRegistrar:registrar];
}
@end
