
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_base/utils/extensions/extension.dart';

import 'gradient_button_widget.dart';

class ErrorView extends StatelessWidget {
  final String? apiErrorMessage;
  final bool? isButtonVisible;
  final String? buttonText;
  final Function()? onButtonPressed;
  const  ErrorView({@required this.apiErrorMessage,
    this.buttonText,
    this.isButtonVisible=true,
   this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Get.width * 0.75,
              child: Text(
                apiErrorMessage ?? "something_wrong".tr,
                softWrap: true,
                textAlign: TextAlign.center,
                style: Get.textTheme.subtitle1!.regular
                    .apply(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: isButtonVisible!,
              child: GradientButtonWidget(
                width: Get.width * 0.50,
                text: buttonText!.tr,
                onPressed: onButtonPressed,
              ),
            )
          ],
        ),
      ),
    );
  }
}
