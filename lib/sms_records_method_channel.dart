import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'sms_records_platform_interface.dart';

/// An implementation of [SmsRecordsPlatform] that uses method channels.
class MethodChannelSmsRecords extends SmsRecordsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sms_records');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
