import 'package:flutter/widgets.dart';

import '../types/types.dart';
import 'cm_container.dart';

/// CmView
class CmView extends StatelessWidget {
  /// CmView
  const CmView({
    super.key,
    this.children = const <Widget>[],
    this.style,
  });

  /// The child contained by the container.
  final List<Widget> children;

  /// style
  final Style? style;

  @override
  Widget build(BuildContext context) {
    Widget current = CmContainer(
      style: style,
      children: children,
    );

    return (style?.flex ?? 0) > 0
        ? Flexible(
            flex: style?.flex ?? 0,
            child: current,
          )
        : current;
  }
}
