import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/config/constants/app_color.dart';
import 'package:react_conf/src/config/constants/image_assets.dart';
class HeadingTextTile extends StatelessWidget {
  const HeadingTextTile({
    Key? key,
    required this.text,
    this.textColor,
    this.iconColor,
  }) : super(key: key);

  final String text;
  final Color? textColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: textColor ?? AppColor.kTextColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.asset(
            ImageAssets.icAppLogo,
            height: 150.h,
            width: 100.w,
          ),
        ],
      ),
    );
  }
}

