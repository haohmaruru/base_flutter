import 'package:base/res/dimens.dart';
import 'package:base/res/theme/theme_manager.dart';
import 'package:base/widget/button_widget.dart';
import 'package:flutter/material.dart';

import '../res/strings.dart';
import '../res/theme/text_theme.dart';
import 'loading_widget.dart';

class DialogWidget extends StatelessWidget {
  final String? title;
  final dynamic description;
  final String? image;

  DialogWidget({this.title, this.description = "", this.image});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 35.ws),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.ws),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 60.ws,
            bottom: 16.ws + 10.ws,
            left: 16.ws,
            right: 16.ws,
          ),
          margin: EdgeInsets.only(top: 60.ws),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(16.ws),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (title != null)
                Center(
                    child: Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: text22.bold.black,
                )),
              if (title != null)
                SizedBox(
                  height: 18.ws,
                ),
              description is Widget
                  ? description
                  : Text(
                      description,
                      textAlign: TextAlign.center,
                      style: text16.black,
                    ),
              SizedBox(
                height: 24.hs,
              ),
              buildBottomButton(context),
            ],
          ),
        ),
        Positioned(
            left: 16.ws,
            right: 16.ws,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 60.ws,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(60.ws)),
                child: image != null
                    ? Image.asset(image!)
                    : Container(
                        height: 60.ws,
                        width: 60.ws,
                        color: themes.colorPrimary,
                      ),
              ),
            )),
      ],
    );
  }

  Widget buildBottomButton(BuildContext context) {
    return Container();
  }
}

class LoadingDialogWidget extends DialogWidget {
  final String? title;
  final String? description;

  LoadingDialogWidget({this.title, this.description})
      : super(title: title, description: description);

  @override
  Widget buildBottomButton(BuildContext context) {
    return LoadingWidget();
  }
}

class NoButtonDialogWidget extends DialogWidget {
  final String? title;
  final dynamic description;

  NoButtonDialogWidget({this.title, required this.description})
      : super(title: title, description: description);

  @override
  Widget buildBottomButton(BuildContext context) {
    return const SizedBox(
      height: 0,
    );
  }
}

class OneButtonDialogWidget extends DialogWidget {
  final String? title;
  final dynamic description;
  final String? textConfirm;
  final Function? onConfirmed;
  final bool autoCloseAfterConfirm;

  OneButtonDialogWidget(
      {this.title,
      required this.description,
      this.textConfirm,
      this.onConfirmed,
      this.autoCloseAfterConfirm = true})
      : super(title: title, description: description);

  @override
  Widget buildBottomButton(BuildContext context) {
    return Center(
      child: RoundButton(
        text: textConfirm ?? Strings.confirm.trans,
        radius: 60.ws,
        textStyle: text16.bold.white,
        height: 36.ws,
        onPressed: () {
          if (autoCloseAfterConfirm) Navigator.pop(context);
          if (onConfirmed != null) onConfirmed!();
        },
      ),
    );
  }
}

class TwoButtonDialogWidget extends DialogWidget {
  final String? title;
  final dynamic description;
  final String? textConfirm;
  final Function? onConfirmed;
  final String? textCancel;
  final Function? onCanceled;
  final String? image;

  TwoButtonDialogWidget(
      {this.title,
      this.description,
      this.textConfirm,
      this.onConfirmed,
      this.textCancel,
      this.onCanceled,
      this.image})
      : super(title: title, description: description, image: image);

  @override
  Widget buildBottomButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: RoundButton(
            text: textCancel ?? Strings.cancel.trans,
            radius: 60.ws,
            height: 36.hs,
            color: themes.colorWhite,
            textStyle: text16.bold.black,
            onPressed: () {
              Navigator.pop(context);
              if (onCanceled != null) onCanceled!();
            },
          ),
        ),
        SizedBox(
          width: 15.hs,
        ),
        Expanded(
          child: RoundButton(
            color: themes.colorPrimary,
            text: textConfirm ?? Strings.confirm.trans,
            radius: 60.ws,
            textStyle: text16.bold.white,
            height: 36.hs,
            onPressed: () {
              Navigator.pop(context);
              if (onConfirmed != null) onConfirmed!();
            },
          ),
        ),
      ],
    );
  }
}
