import 'package:flutter/material.dart';

import '../../../design_system_module.dart';


class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    this.action,
    this.overlayColor,
    this.child,
    this.foregroundColor,
    this.textStyle,
    this.shadowColor,
    this.backgroundColor,
    this.shape,
    this.elevation,
  }) : super(key: key);
  final Color? overlayColor;
  final Widget? child;
  final Color? foregroundColor;
  final TextStyle? textStyle;
  final Color? shadowColor;
  final double? elevation;
  final Color? backgroundColor;
  final VoidCallback? action;
  final RoundedRectangleBorder? shape;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          elevation: elevation == null
              ? null
              : MaterialStateProperty.all<double>(elevation!),
          overlayColor: overlayColor == null
              ? null
              : MaterialStateProperty.all<Color>(overlayColor!),
          foregroundColor:foregroundColor == null ? null : MaterialStateProperty.all<Color>(
              foregroundColor!),
          shadowColor: shadowColor == null
              ? null
              : MaterialStateProperty.all<Color>(shadowColor!),
          backgroundColor: backgroundColor == null
              ? null
              : MaterialStateProperty.all<Color>(backgroundColor!),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            shape ??
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
          ),
          textStyle: MaterialStateProperty.all<TextStyle?>(
            textStyle ??
                AppFonts.defaultFont(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        onPressed: action,
        child: child);
  }
}
