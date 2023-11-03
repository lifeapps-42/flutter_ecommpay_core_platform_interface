import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_ecommpay_core_platform_interface_method_channel.dart';

abstract class FlutterEcommpayCorePlatformInterfacePlatform extends PlatformInterface {
  /// Constructs a FlutterEcommpayCorePlatformInterfacePlatform.
  FlutterEcommpayCorePlatformInterfacePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterEcommpayCorePlatformInterfacePlatform _instance = MethodChannelFlutterEcommpayCorePlatformInterface();

  /// The default instance of [FlutterEcommpayCorePlatformInterfacePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterEcommpayCorePlatformInterface].
  static FlutterEcommpayCorePlatformInterfacePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterEcommpayCorePlatformInterfacePlatform] when
  /// they register themselves.
  static set instance(FlutterEcommpayCorePlatformInterfacePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
