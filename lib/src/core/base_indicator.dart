import 'package:flutter/material.dart';

class BaseIndicator extends StatelessWidget {
  /// Whether this indicator is selected or not.
  final bool isSelected;

  /// The child to be placed within the indicator.
  final Widget? child;

  /// Action to be taken when this indictor is pressed.
  final Function? onPressed;

  /// Color of this indicator when it is not selected.
  final Color? color;

  /// Color of this indicator when it is selected.
  final Color? activeColor;

  /// Border color of this indicator when it is selected.
  final Color? activeBorderColor;

  /// Border color of this indicator before it is reached.
  final Color? inactiveBorderColor;

  /// The border width of this indicator when it is selected.
  final double activeBorderWidth;

  /// Radius of this indicator.
  final double radius;

  /// The amount of padding around each side of the child.
  final double padding;

  /// The amount of margin around each side of the indicator.
  final double margin;

  const BaseIndicator({Key? key,
    this.isSelected = false,
    this.child,
    this.onPressed,
    this.color,
    this.activeColor,
    this.activeBorderColor,
    this.inactiveBorderColor,
    this.radius = 24.0,
    this.padding = 5.0,
    this.margin = 1.0,
    this.activeBorderWidth = 0.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isSelected ? EdgeInsets.all(margin) : EdgeInsets.zero,
      decoration: BoxDecoration(
        border: isSelected
            ? Border.all(
                color: activeBorderColor ?? Colors.blue,
                width: activeBorderWidth,
              )
            // : null,
            : Border.all(
                color: inactiveBorderColor ?? Colors.grey,
                width: activeBorderWidth,
              ),
        shape: BoxShape.circle,
        color: isSelected ? Colors.white : inactiveBorderColor,
      ),
      child: InkWell(
        onTap: onPressed as void Function()?,
        child: Container(
          height: radius * 2,
          width: radius * 2,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: isSelected ? activeColor ?? Colors.green : color ?? Colors.grey,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
