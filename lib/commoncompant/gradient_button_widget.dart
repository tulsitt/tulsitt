import 'package:flutter/material.dart';
import 'package:flutter_base/utils/theme/colors.dart';
import 'package:get/get.dart';
import 'package:flutter_base/utils/extensions/extension.dart';

class GradientButtonWidget extends StatelessWidget {
  final String? text;
  final Function()? onPressed;
  final double? width;
  final Color? textColor;

  GradientButtonWidget(
      {@required this.text,
      this.onPressed,
      this.textColor,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? Get.width,
      height: 52,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        gradient: LinearGradient(
          colors: [AppColors.mainColor, AppColors.secondColor],
        ),
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Container(
          child: Text(
            text ?? "",
            style: Get.textTheme.subtitle2!.bold
                .apply(color: textColor ?? AppColors.colorWhite),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
