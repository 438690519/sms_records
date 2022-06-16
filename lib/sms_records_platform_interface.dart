import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'sms_records_method_channel.dart';

abstract class SmsRecordsPlatform extends PlatformInterface {
  /// Constructs a SmsRecordsPlatform.
  SmsRecordsPlatform() : super(token: _token);

  static final Object _token = Object();

  static SmsRecordsPlatform _instance = MethodChannelSmsRecords();

  /// The default instance of [SmsRecordsPlatform] to use.
  ///
  /// Defaults to [MethodChannelSmsRecords].
  static SmsRecordsPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SmsRecordsPlatform] when
  /// they register themselves.
  static set instance(SmsRecordsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
