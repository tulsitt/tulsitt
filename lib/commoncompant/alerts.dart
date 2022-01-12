import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/utils/common/image_const.dart';
import 'package:flutter_base/utils/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

void showSuccessSnackBar(String? message,
    {String? iconPath, int? iconColor, int? messageColor}) {
  if (message == null) return;
  Get.bottomSheet(
      Container(
        height: Get.height / 7,
        padding: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[500]!.withOpacity(0.7),
                offset: Offset(0, -1.6),
                spreadRadius: 3,
                blurRadius: 6,
              )
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0))),
        alignment: Alignment.center,
        child: Row(
          // mainAxisAlignment: (iconPath != null) ?MainAxisAlignment.spaceEvenly:MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    (iconPath != null) ? iconPath : ImageConst.check.getPath(),
                    color: (iconColor != null)
                        ? AppColors.colorGreen
                        : AppColors.colorGreen,
                    height: 27.0,
                    // height: 28.0,
                    width: 26.0,
                    alignment: Alignment.centerRight,
                  ),
                  const SizedBox(
                    width: 15.0,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                '$message',
                textAlign: TextAlign.start,
                // textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: (messageColor != null)
                        ? Color(messageColor)
                        : AppColors.colorGreen),
              ),
            )
          ],
        ),
      ),
      ignoreSafeArea: false,
      enableDrag: false,
      // elevation: 10.0,
      isDismissible: false,
      barrierColor: Colors.transparent
      // enableDrag: false,
      );
  Future.delayed(Duration(milliseconds: 3000), () => Get.back());
}

void showErrorSnackBar(String? message, {String? iconPath}) {
  if (message == null) return;
  Get.bottomSheet(
      Container(
        height: Get.height / 7,
        padding: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[500]!.withOpacity(0.7),
                offset: Offset(0, -1.6),
                spreadRadius: 3,
                blurRadius: 6,
              )
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0))),
        alignment: Alignment.center,
        child: Row(
          // mainAxisAlignment: (iconPath != null) ?MainAxisAlignment.spaceEvenly:MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    (iconPath != null) ? iconPath : ImageConst.cross.getPath(),
                    color: AppColors.colorRed,
                    height: 27.0,
                    // height: 28.0,
                    width: 26.0,
                    alignment: Alignment.centerRight,
                  ),
                  const SizedBox(
                    width: 15.0,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                '$message',
                textAlign: TextAlign.start,
                // textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.colorRed),
              ),
            )
          ],
        ),
      ),
      ignoreSafeArea: false,
      enableDrag: false,
      // elevation: 10.0,
      isDismissible: false,
      barrierColor: Colors.transparent
      // enableDrag: false,
      );
  Future.delayed(Duration(milliseconds: 3000), () => Get.back());
}
