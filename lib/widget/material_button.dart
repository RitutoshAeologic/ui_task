import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task/utils/colors.dart';

class MaterialButtonBox extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const MaterialButtonBox({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      MaterialButton(
        color: AppColors.white,
        onPressed: onTap,
        padding: EdgeInsets.only(left: 65.w),
        height: ScreenUtil().setHeight(50),
        minWidth: ScreenUtil().setWidth(200),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children:  <Widget>[
            Text(title,
              style: const  TextStyle(
                fontFamily: "Segoe UI",
                color: AppColors.lightTextColor,
                fontWeight: FontWeight.normal,
                fontSize: 20,
                //height: 1.5,
                wordSpacing: 1.5,
              ),),
            SizedBox(width: ScreenUtil().setWidth(45.w),),
            const Icon(Icons.arrow_forward_ios, color: AppColors.lightTextColor,)
          ],
        ),
      );
  }
}