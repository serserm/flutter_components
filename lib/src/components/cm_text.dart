import 'package:flutter/material.dart';

/// CmText
class CmText extends StatelessWidget {
  /// CmText
  const CmText(
    this.data, {
    super.key,
    this.style,
  });

  /// The text to display.
  final String? data;

  /// style
  final String? style;

  @override
  Widget build(BuildContext context) {
    return Text(data ?? '');
  }
}
