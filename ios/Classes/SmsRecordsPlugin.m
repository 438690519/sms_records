#import "SmsRecordsPlugin.h"
#if __has_include(<sms_records/sms_records-Swift.h>)
#import <sms_records/sms_records-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sms_records-Swift.h"
#endif

@implementation SmsRecordsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSmsRecordsPlugin registerWithRegistrar:registrar];
}
@end
