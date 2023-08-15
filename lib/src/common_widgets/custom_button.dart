import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:react_conf/src/config/constants/app_color.dart';
import 'package:react_conf/src/config/constants/font_assets.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.btnText,
    this.iconData = Icons.arrow_forward_ios,
    this.borderRadius = 15.0,
    required this.onTapBtn,
  }) : super(key: key);

  final String btnText;
  final IconData iconData;
  final double borderRadius;
  final Function()? onTapBtn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.0.w),
      child: SizedBox(
        width: double.infinity,
        height: 60.0.h,
        child: OutlinedButton.icon(
          icon: const SizedBox.shrink(),
          label: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Text(
                btnText,
                style: const TextStyle(
                  color: AppColor.kTextColor,
                  fontFamily: FontAssets.fontFamilyInter,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                iconData,
                color: AppColor.kGreyColor3,
              ),
            ],
          ),
          onPressed: onTapBtn,
          style: ElevatedButton.styleFrom(
            side: const BorderSide(
              width: 1.0,
              color: AppColor.kPrimaryColor,
            ),
            backgroundColor: AppColor.kBackgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
      ),
    );
  }
}
