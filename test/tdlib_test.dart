import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdlib/tdlib.dart';

void main() {
  const MethodChannel channel = MethodChannel('tdlib');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Tdlib.platformVersion, '42');
  });
}
