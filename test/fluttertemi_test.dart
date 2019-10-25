import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertemi/fluttertemi.dart';

void main() {
  const MethodChannel channel = MethodChannel('fluttertemi');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Fluttertemi.platformVersion, '42');
  });
}
