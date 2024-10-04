import 'package:flutter/material.dart';

import '../types/types.dart';

/// CmContainer
class CmContainer extends StatelessWidget {
  /// CmContainer
  const CmContainer({
    super.key,
    this.style,
    this.children = const <Widget>[],
  });

  /// style
  final Style? style;

  /// The child contained by the container.
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: style?.width,
      height: style?.height,
      transform: style?.transform,
      transformAlignment: style?.transformOrigin,
      clipBehavior: style?.overflow ?? Clip.none,
      constraints: BoxConstraints(
        minWidth: style?.minWidth ?? 0,
        minHeight: style?.minHeight ?? 0,
        maxWidth: style?.maxWidth ?? double.infinity,
        maxHeight: style?.maxHeight ?? double.infinity,
      ),
      padding: EdgeInsets.only(
        top: style?.paddingTop ?? style?.paddingVertical ?? style?.padding ?? 0,
        bottom: style?.paddingBottom ??
            style?.paddingVertical ??
            style?.padding ??
            0,
        left: style?.paddingLeft ??
            style?.paddingHorizontal ??
            style?.padding ??
            0,
        right: style?.paddingRight ??
            style?.paddingHorizontal ??
            style?.padding ??
            0,
      ),
      margin: EdgeInsets.only(
        top: style?.marginTop ?? style?.marginVertical ?? style?.margin ?? 0,
        bottom:
            style?.marginBottom ?? style?.marginVertical ?? style?.margin ?? 0,
        left:
            style?.marginLeft ?? style?.marginHorizontal ?? style?.margin ?? 0,
        right:
            style?.marginRight ?? style?.marginHorizontal ?? style?.margin ?? 0,
      ),
      decoration: BoxDecoration(
        boxShadow: style?.boxShadow,
        border: Border(
          top: (style?.borderTopWidth ?? style?.borderWidth ?? 0) > 0
              ? BorderSide(
                  width: style?.borderTopWidth ?? style?.borderWidth ?? 0,
                  color: style?.borderColor ?? const Color(0xFF000000),
                  style: style?.borderStyle ?? BorderStyle.solid,
                )
              : BorderSide.none,
          bottom: (style?.borderBottomWidth ?? style?.borderWidth ?? 0) > 0
              ? BorderSide(
                  width: style?.borderBottomWidth ?? style?.borderWidth ?? 0,
                  color: style?.borderColor ?? const Color(0xFF000000),
                  style: style?.borderStyle ?? BorderStyle.solid,
                )
              : BorderSide.none,
          left: (style?.borderLeftWidth ?? style?.borderWidth ?? 0) > 0
              ? BorderSide(
                  width: style?.borderLeftWidth ?? style?.borderWidth ?? 0,
                  color: style?.borderColor ?? const Color(0xFF000000),
                  style: style?.borderStyle ?? BorderStyle.solid,
                )
              : BorderSide.none,
          right: (style?.borderRightWidth ?? style?.borderWidth ?? 0) > 0
              ? BorderSide(
                  width: style?.borderRightWidth ?? style?.borderWidth ?? 0,
                  color: style?.borderColor ?? const Color(0xFF000000),
                  style: style?.borderStyle ?? BorderStyle.solid,
                )
              : BorderSide.none,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            style?.borderTopLeftRadius ?? style?.borderRadius ?? 0,
          ),
          topRight: Radius.circular(
            style?.borderTopRightRadius ?? style?.borderRadius ?? 0,
          ),
          bottomLeft: Radius.circular(
            style?.borderBottomLeftRadius ?? style?.borderRadius ?? 0,
          ),
          bottomRight: Radius.circular(
            style?.borderBottomRightRadius ?? style?.borderRadius ?? 0,
          ),
        ),
        color: style?.backgroundColor,
        gradient: style?.backgroundGradient,
        image: style?.backgroundImage,
      ),
      child: Flex(
        mainAxisSize:
            (style?.flex ?? 0) > 0 ? MainAxisSize.max : MainAxisSize.min,
        crossAxisAlignment: style?.alignItems ?? CrossAxisAlignment.stretch,
        mainAxisAlignment: style?.justifyContent ?? MainAxisAlignment.start,
        verticalDirection:
            style?.flexDirection == FlexDirection.columnReverse ||
                    style?.flexDirection == FlexDirection.rowReverse
                ? VerticalDirection.up
                : VerticalDirection.down,
        direction: style?.flexDirection == FlexDirection.row ||
                style?.flexDirection == FlexDirection.rowReverse
            ? Axis.horizontal
            : Axis.vertical,
        children: children,
      ),
    );
  }
}
