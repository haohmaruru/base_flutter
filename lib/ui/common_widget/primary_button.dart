import 'package:base_flutter/extension/context_extension.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final String title;
  final VoidCallback? onPressed;
  final double radius;
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;
  final Color? disabledBackgroundColor;
  final Color? textColor;
  final Color? disabledTextColor;
  final bool enabled;
  final double? width;
  final double? height;

  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.radius = 12,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.backgroundColor,
    this.disabledBackgroundColor,
    this.textColor,
    this.disabledTextColor,
    this.enabled = true,
    this.width,
    this.height,
  });

  @override
  State<StatefulWidget> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool _debounced = false;

  void _handlePressed() {
    if (!widget.enabled || widget.onPressed == null) return;
    if (_debounced) return;
    _debounced = true;
    widget.onPressed!.call();
    Future.delayed(const Duration(milliseconds: 300), () {
      if (!mounted) return;
      _debounced = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final Color enabledBg = widget.backgroundColor ?? theme.enableButtonColor;
    final Color disabledBg = widget.disabledBackgroundColor ?? theme.disableButtonColor;
    final Color enabledFg = widget.textColor ?? theme.enableButtonColor;
    final Color disabledFg = widget.disabledTextColor ?? theme.disableButtonColor;

    final button = ElevatedButton(
      onPressed: widget.enabled ? _handlePressed : null,
      style: ButtonStyle(
        padding: WidgetStateProperty.all(widget.padding),
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.disabled)) return disabledBg;
          return enabledBg;
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.disabled)) return disabledFg;
          return enabledFg;
        }),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(widget.radius))),
        elevation: WidgetStateProperty.resolveWith<double?>((states) {
          if (states.contains(WidgetState.disabled)) return 0;
          return 2;
        }),
      ),
      child: Text(widget.title),
    );

    return SizedBox(width: widget.width ?? double.infinity, height: widget.height ?? double.infinity, child: button);
  }
}
