import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// DeviceSize
class DeviceSize {
  /// DeviceSize
  DeviceSize({
    this.baseWidth = 0,
    this.baseHeight = 0,
  });

  /// baseWidth
  final int baseWidth;

  /// baseHeight
  final int baseHeight;
}

/// ScaleData
class ScaleData {
  ScaleData._({
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  static ScaleData? _instance;

  /// ScaleData
  factory ScaleData({
    DeviceSize? mobile,
    DeviceSize? tablet,
    DeviceSize? desktop,
  }) {
    return _instance ??= ScaleData._(
      mobile: mobile ?? DeviceSize(),
      tablet: tablet ?? DeviceSize(),
      desktop: desktop ?? DeviceSize(),
    );
  }

  /// update scale size
  static update(BuildContext context) {
    MediaQuery.maybeOf(context);
  }

  /// mobile size
  final DeviceSize mobile;

  /// tablet size
  final DeviceSize tablet;

  /// desktop size
  final DeviceSize desktop;

  /// rootNavigatorKey
  final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  /// shellNavigatorKey
  final GlobalKey<NavigatorState> shellNavigatorKey =
      GlobalKey<NavigatorState>();
}

/// scale size
double scale(num size) {
  double result = 0;
  final ScaleData data = ScaleData();
  final BuildContext? context = data.rootNavigatorKey.currentContext;
  final int baseWidth = data.mobile.baseWidth;

  assert(baseWidth != 0, 'baseWidth is 0');
  assert(context != null, 'root context is null');

  if (baseWidth != 0 && context != null) {
    final MediaQueryData? deviceData = MediaQuery.maybeOf(context);
    if (deviceData != null) {
      final double minSize = kIsWeb
          ? deviceData.size.width
          : math.min(deviceData.size.width, deviceData.size.height);
      final int fullWidth = (minSize * deviceData.devicePixelRatio).round();
      final double horizontalRatio = fullWidth / baseWidth;

      result = (horizontalRatio * size).round() / deviceData.devicePixelRatio;
    }
  }

  return result;
}
