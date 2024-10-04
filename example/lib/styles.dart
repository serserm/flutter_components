import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

class Styles {
  static get container {
    return Style(
      flex: 1,
      justifyContent: JustifyContent.start,
      alignItems: AlignItems.center,
      maxHeight: scale(300),
      margin: scale(10),
      padding: scale(10),
      backgroundColor: Colors.grey,
    );
  }

  static get element {
    return Style(
      alignItems: AlignItems.center,
      minWidth: scale(300),
      padding: scale(10),
      borderRadius: scale(20),
      borderWidth: scale(1),
      borderColor: Colors.purple,
      backgroundColor: Colors.white30,
    );
  }
}
