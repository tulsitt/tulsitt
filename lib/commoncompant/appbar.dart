import 'package:flutter/material.dart';
import 'package:flutter_base/utils/theme/colors.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final String? icon;
  final Function()? onPress;

  CustomAppBar({
    this.onPress,
    this.icon,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, left: 16.0, right: 16, bottom: 16),
      height: kToolbarHeight + 10,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            title!,
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: onPress,
            child: Image.asset(
              icon!,
              width: 20,
              height: 20,
              color: AppColors.colorWhite,
            ),
          ),
        ],
      ),
    );
  }
}
