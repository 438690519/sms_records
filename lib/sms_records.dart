
import 'sms_records_platform_interface.dart';

class SmsRecords {
  Future<String?> getPlatformVersion() {
    return SmsRecordsPlatform.instance.getPlatformVersion();
  }
}
