import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ecommpay_core_platform_interface/flutter_ecommpay_core_platform_interface.dart';
import 'package:flutter_ecommpay_core_platform_interface/flutter_ecommpay_core_platform_interface_platform_interface.dart';
import 'package:flutter_ecommpay_core_platform_interface/flutter_ecommpay_core_platform_interface_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterEcommpayCorePlatformInterfacePlatform
    with MockPlatformInterfaceMixin
    implements FlutterEcommpayCorePlatformInterfacePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterEcommpayCorePlatformInterfacePlatform initialPlatform = FlutterEcommpayCorePlatformInterfacePlatform.instance;

  test('$MethodChannelFlutterEcommpayCorePlatformInterface is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterEcommpayCorePlatformInterface>());
  });

  test('getPlatformVersion', () async {
    FlutterEcommpayCorePlatformInterface flutterEcommpayCorePlatformInterfacePlugin = FlutterEcommpayCorePlatformInterface();
    MockFlutterEcommpayCorePlatformInterfacePlatform fakePlatform = MockFlutterEcommpayCorePlatformInterfacePlatform();
    FlutterEcommpayCorePlatformInterfacePlatform.instance = fakePlatform;

    expect(await flutterEcommpayCorePlatformInterfacePlugin.getPlatformVersion(), '42');
  });
}
