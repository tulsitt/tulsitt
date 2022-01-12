import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/utils/common/constants.dart';
import 'package:flutter_base/utils/common/image_const.dart';
import 'package:load/load.dart';
import 'package:lottie/lottie.dart';

Widget getLoader() {
  return Expanded(
    child: Center(
      child: Lottie.asset(
        ImageConst.loader.getPath(),
        width: 80,
        height: 80,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget getProvider({Widget? child}){
  return LoadingProvider(
    loadingWidgetBuilder: (BuildContext context, LoadingThemeData data) {
      return Center(
        child: SizedBox(
          width: 55,
          height: 55,
          child: Transform.scale(
            scale: 5,
            child: Lottie.asset(
              ImageConst.loader.getPath(),
              width: 55,
              height: 55,
              frameBuilder:
                  (BuildContext context, Widget child, dynamic composition) {
                return AnimatedOpacity(
                  opacity: composition == null ? 0 : 1,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeOut,
                  child: child,
                );
              },
            ),
          ),
        ),
      );
    },
    themeData: LoadingThemeData(),
    child: child!,
  );
}
