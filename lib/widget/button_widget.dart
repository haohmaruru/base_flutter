import 'package:base/res/dimens.dart';
import 'package:base/res/theme/text_theme.dart';
import 'package:base/res/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundButton extends StatefulWidget {
  final Rx<bool>? enable;
  final String? text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final double? radius;
  final Color? color;
  final Color? disableColor;
  final double? width;
  final double? height;

  const RoundButton(
      {super.key,
      this.enable,
      this.text,
      this.textStyle,
      this.onPressed,
      this.radius = 0,
      this.color,
      this.disableColor,
      this.width,
      this.height});
  @override
  State<StatefulWidget> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  late Rx<bool> enable;
  bool enablePress = true;

  @override
  void initState() {
    super.initState();
    enable = widget.enable ?? Rx(true);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.radius ?? 0),
            color: enable.value
                ? widget.color ?? getColor().colorWhite
                : widget.disableColor ?? getColor().colorInActive,
          ),
          alignment: Alignment.center,
          height: widget.height ?? 40.ws,
          width: widget.width ?? double.infinity,
          child: Text(
            widget.text ?? "",
            style: widget.textStyle ?? text14.white.bold,
          ),
        ),
        onTap: () {
          if (enablePress && enable.value && widget.onPressed != null) {
            disableFastClick();
            widget.onPressed!();
          } else {
            print(" kduocclicknha");
          }
        },
      ),
    );
  }

  disableFastClick() async {
    enablePress = false;
    await Future.delayed(const Duration(milliseconds: 500));
    enablePress = true;
  }
}
