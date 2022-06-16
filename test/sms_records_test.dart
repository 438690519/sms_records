import 'package:flutter_test/flutter_test.dart';
import 'package:sms_records/sms_records.dart';
import 'package:sms_records/sms_records_platform_interface.dart';
import 'package:sms_records/sms_records_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSmsRecordsPlatform 
    with MockPlatformInterfaceMixin
    implements SmsRecordsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SmsRecordsPlatform initialPlatform = SmsRecordsPlatform.instance;

  test('$MethodChannelSmsRecords is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSmsRecords>());
  });

  test('getPlatformVersion', () async {
    SmsRecords smsRecordsPlugin = SmsRecords();
    MockSmsRecordsPlatform fakePlatform = MockSmsRecordsPlatform();
    SmsRecordsPlatform.instance = fakePlatform;
  
    expect(await smsRecordsPlugin.getPlatformVersion(), '42');
  });
}
