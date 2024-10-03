import 'package:flutter/material.dart';

/// FlexDirection controls which directions children of a container go.
enum FlexDirection {
  row,
  rowReverse,
  column,
  columnReverse,
}

/// MainAxisAlignment
typedef JustifyContent = MainAxisAlignment;

/// CrossAxisAlignment
typedef AlignItems = CrossAxisAlignment;

/// DecorationImage
typedef BackgroundImage = DecorationImage;

/// Matrix4
typedef Transform = Matrix4;

/// AlignmentGeometry
typedef TransformOrigin = AlignmentGeometry;

/// Clip
typedef Overflow = Clip;

/// Style
final class Style {
  /// Style
  Style({
    this.flex,
    this.flexDirection,
    this.justifyContent,
    this.alignItems,
    this.width,
    this.height,
    this.minWidth,
    this.minHeight,
    this.maxWidth,
    this.maxHeight,
    this.padding,
    this.paddingHorizontal,
    this.paddingVertical,
    this.paddingTop,
    this.paddingBottom,
    this.paddingRight,
    this.paddingLeft,
    this.margin,
    this.marginHorizontal,
    this.marginVertical,
    this.marginTop,
    this.marginBottom,
    this.marginRight,
    this.marginLeft,
    this.borderWidth,
    this.borderTopWidth,
    this.borderBottomWidth,
    this.borderLeftWidth,
    this.borderRightWidth,
    this.borderRadius,
    this.borderTopLeftRadius,
    this.borderTopRightRadius,
    this.borderBottomLeftRadius,
    this.borderBottomRightRadius,
    this.borderStyle,
    this.borderColor,
    this.backgroundColor,
    this.backgroundGradient,
    this.backgroundImage,
    this.transform,
    this.transformOrigin,
    this.overflow,
    this.boxShadow,
  });

  /// The flex factor to use for this child.
  final int? flex;

  /// FlexDirection
  final FlexDirection? flexDirection;

  /// MainAxisAlignment
  final JustifyContent? justifyContent;

  /// CrossAxisAlignment
  final AlignItems? alignItems;

  /// width
  final double? width;

  /// height
  final double? height;

  /// minWidth
  final double? minWidth;

  /// minHeight
  final double? minHeight;

  /// maxWidth
  final double? maxWidth;

  /// maxHeight
  final double? maxHeight;

  /// padding
  final double? padding;

  /// padding
  final double? paddingHorizontal;

  /// padding
  final double? paddingVertical;

  /// padding
  final double? paddingTop;

  /// padding
  final double? paddingBottom;

  /// padding
  final double? paddingLeft;

  /// padding
  final double? paddingRight;

  /// margin
  final double? margin;

  /// margin
  final double? marginHorizontal;

  /// margin
  final double? marginVertical;

  /// margin
  final double? marginTop;

  /// margin
  final double? marginBottom;

  /// margin
  final double? marginLeft;

  /// margin
  final double? marginRight;

  /// border
  final double? borderWidth;

  /// border
  final double? borderTopWidth;

  /// border
  final double? borderBottomWidth;

  /// border
  final double? borderLeftWidth;

  /// border
  final double? borderRightWidth;

  /// border
  final double? borderRadius;

  /// border
  final double? borderTopLeftRadius;

  /// border
  final double? borderTopRightRadius;

  /// border
  final double? borderBottomLeftRadius;

  /// border
  final double? borderBottomRightRadius;

  /// border
  final BorderStyle? borderStyle;

  /// border
  final Color? borderColor;

  /// An immutable 32 bit color value in ARGB format.
  final Color? backgroundColor;

  /// backgroundGradient
  final Gradient? backgroundGradient;

  /// DecorationImage
  final BackgroundImage? backgroundImage;

  /// Matrix4
  final Transform? transform;

  /// AlignmentGeometry
  final TransformOrigin? transformOrigin;

  /// Clip
  final Overflow? overflow;

  /// A list of shadows cast by this box behind the box.
  List<BoxShadow>? boxShadow;
}
